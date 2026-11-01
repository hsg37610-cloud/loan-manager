import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:loan_manager/core/router/app_router.dart';
import 'package:loan_manager/core/theme/theme_mode_provider.dart';
import 'package:loan_manager/features/export/data/export_data.dart';
import 'package:loan_manager/features/export/data/excel_export_service.dart';
import 'package:loan_manager/features/export/data/pdf_export_service.dart';
import 'package:loan_manager/features/import/data/excel_import_service.dart';
import 'package:loan_manager/features/ledger/domain/models.dart';
import 'package:loan_manager/features/ledger/presentation/ledger_providers.dart';
import 'package:loan_manager/shared/widgets/jalali_date_range_dialog.dart';
import 'package:share_plus/share_plus.dart';

final NumberFormat _money = NumberFormat.decimalPattern('en');

class LoanListScreen extends ConsumerStatefulWidget {
  const LoanListScreen({super.key});

  @override
  ConsumerState<LoanListScreen> createState() => _LoanListScreenState();
}

class _LoanListScreenState extends ConsumerState<LoanListScreen> {
  bool _selectionMode = false;
  final Set<String> _selected = {};
  bool _busy = false;

  void _toast(String text) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(text)));
  }

  void _enterSelectionMode(String id) {
    setState(() {
      _selectionMode = true;
      _selected.add(id);
    });
  }

  void _toggle(String id) {
    setState(() {
      if (!_selected.remove(id)) _selected.add(id);
    });
  }

  void _exitSelectionMode() {
    setState(() {
      _selectionMode = false;
      _selected.clear();
    });
  }

  DateRangeFilter? _toFilter(JalaliDateRange? range) =>
      range == null || range.isEmpty ? null : DateRangeFilter(from: range.from, to: range.to);

  Future<void> _exportExcel() async {
    final range = await showJalaliDateRangeDialog(context);
    if (range == null || !mounted) return;
    setState(() => _busy = true);
    try {
      final path = await ref.read(excelExportServiceProvider).export(loanIds: _selected.toList(), range: _toFilter(range));
      if (!mounted) return;
      await SharePlus.instance.share(ShareParams(files: [XFile(path)], text: 'خروجی اکسل وام‌ها'));
      if (mounted) _toast('خروجی اکسل ساخته شد');
    } catch (e) {
      if (mounted) _toast('خطا در خروجی اکسل: $e');
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  Future<void> _exportPdf() async {
    final range = await showJalaliDateRangeDialog(context);
    if (range == null || !mounted) return;
    setState(() => _busy = true);
    try {
      final shared = await ref.read(pdfExportServiceProvider).share(loanIds: _selected.toList(), range: _toFilter(range));
      if (mounted) _toast(shared ? 'فایل PDF آماده اشتراک‌گذاری است' : 'ارسال فایل PDF انجام نشد');
    } catch (e) {
      if (mounted) _toast('خطا در خروجی PDF: $e');
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  Future<void> _importExcel() async {
    // file_picker 13.x: use the static FilePicker.pickFiles() API.
    // The return type varies; handle both List<PlatformFile> and FilePickerResult?.
    String? path;
    try {
      final dynamic result = await FilePicker.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['xlsx'],
      );
      if (result == null) return;

      // Case A: FilePickerResult? with .files list
      try {
        final dynamic files = result.files;
        if (files is List && files.isNotEmpty) {
          path = files.first.path as String?;
        }
      } catch (_) {}

      // Case B: result is already a List<PlatformFile>
      if (path == null && result is List && result.isNotEmpty) {
        path = (result.first as PlatformFile).path;
      }
    } catch (e) {
      _toast('خطا در انتخاب فایل: $e');
      return;
    }

    if (path == null) {
      _toast('انتخاب فایل ممکن نبود');
      return;
    }
    if (!mounted) return;

    final confirmed = await showDialog<bool>(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('ورود از اکسل'),
        content: const Text('وام‌ها، اقساط و پرداخت‌های فایل به برنامه اضافه می‌شوند. ادامه می‌دهید؟'),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context, false), child: const Text('انصراف')),
          FilledButton(onPressed: () => Navigator.pop(context, true), child: const Text('ورود')),
        ],
      ),
    );
    if (confirmed != true || !mounted) return;

    setState(() => _busy = true);
    try {
      final summary = await ref.read(excelImportServiceProvider).importFile(path);
      if (mounted) _toast(summary.report);
    } catch (e) {
      if (mounted) _toast('خطا در ورود: $e');
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final loansAsync = ref.watch(activeLoansProvider);
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: _selectionMode ? Text('${_selected.length} مورد انتخاب شده') : const Text('وام‌ها'),
        leading: _selectionMode ? IconButton(icon: const Icon(Icons.close_rounded), onPressed: _exitSelectionMode) : null,
        actions: [
          if (!_selectionMode)
            PopupMenuButton<String>(
              tooltip: 'بیشتر',
              onSelected: (item) {
                if (item == 'import-excel') _importExcel();
              },
              itemBuilder: (_) => [
                const PopupMenuItem(
                  value: 'import-excel',
                  child: Row(
                    children: [
                      Icon(Icons.upload_file_rounded, size: 20),
                      SizedBox(width: 8),
                      Text('ورود از اکسل'),
                    ],
                  ),
                ),
              ],
            ),
          const _ThemeModeButton(),
        ],
      ),
      floatingActionButton: _selectionMode || _busy
          ? null
          : FloatingActionButton.extended(
              onPressed: () => context.pushNamed(AppRoutes.addLoan),
              icon: const Icon(Icons.add),
              label: const Text('افزودن وام'),
            ),
      bottomNavigationBar: _selectionBar,
      body: loansAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, _) => Center(child: Text('خطا در بارگذاری وام‌ها\n$error', textAlign: TextAlign.center, style: TextStyle(color: theme.colorScheme.error))),
        data: (loans) {
          if (loans.isEmpty) return const Center(child: Text('وامی یافت نشد'));
          return ListView.separated(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 96),
            itemCount: loans.length,
            separatorBuilder: (_, _) => const SizedBox(height: 12),
            itemBuilder: (context, index) {
              final loan = loans[index];
              return _LoanCard(
                loan: loan,
                selectionMode: _selectionMode,
                selected: _selected.contains(loan.id),
                onTap: () => _selectionMode ? _toggle(loan.id) : context.pushNamed(AppRoutes.loanDetail, pathParameters: {'id': loan.id}),
                onLongPress: () => _enterSelectionMode(loan.id),
              );
            },
          );
        },
      ),
    );
  }

  Widget get _selectionBar {
    if (!_selectionMode || _selected.isEmpty || _busy) return const SizedBox.shrink();
    return SafeArea(
      top: false,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 12),
        child: Row(
          children: [
            Expanded(
              child: FilledButton.icon(
                onPressed: _exportExcel,
                icon: const Icon(Icons.table_chart_rounded),
                label: const Text('خروجی اکسل'),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: FilledButton.tonalIcon(
                onPressed: _exportPdf,
                icon: const Icon(Icons.picture_as_pdf_rounded),
                label: const Text('خروجی PDF'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _LoanCard extends ConsumerWidget {
  const _LoanCard({
    required this.loan,
    required this.selectionMode,
    required this.selected,
    required this.onTap,
    required this.onLongPress,
  });

  final Loan loan;
  final bool selectionMode;
  final bool selected;
  final VoidCallback onTap;
  final VoidCallback onLongPress;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final installments = ref.watch(loanInstallmentsProvider(loan.id));
    final total = installments.value?.length ?? loan.termMonths;
    final paid = installments.value?.where((i) => i.isFullyPaid).length ?? 0;
    final progress = total == 0 ? 0.0 : paid / total;

    return Card(
      clipBehavior: Clip.antiAlias,
      color: selected ? theme.colorScheme.primaryContainer.withValues(alpha: 0.3) : null,
      child: InkWell(
        onTap: onTap,
        onLongPress: onLongPress,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  if (selectionMode) ...[
                    Checkbox(value: selected, onChanged: (_) => onTap()),
                    const SizedBox(width: 8),
                  ],
                  Expanded(child: Text(loan.name, style: theme.textTheme.titleMedium, maxLines: 1, overflow: TextOverflow.ellipsis)),
                  IconButton(icon: const Icon(Icons.edit, size: 20), onPressed: () => context.push('/edit-loan/${loan.id}')),
                ],
              ),
              if (loan.bankName != null && loan.bankName!.isNotEmpty)
                Text(loan.bankName!, style: theme.textTheme.bodySmall?.copyWith(color: theme.colorScheme.onSurfaceVariant)),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('مبلغ قسط', style: theme.textTheme.bodyMedium?.copyWith(color: theme.colorScheme.onSurfaceVariant)),
                  Text('${_money.format(loan.installmentAmount)} تومان', style: theme.textTheme.titleSmall),
                ],
              ),
              const SizedBox(height: 16),
              LinearProgressIndicator(value: progress, minHeight: 8, borderRadius: BorderRadius.circular(8)),
              const SizedBox(height: 8),
              Text('$paid از $total قسط پرداخت شده', style: theme.textTheme.bodySmall?.copyWith(color: theme.colorScheme.onSurfaceVariant)),
            ],
          ),
        ),
      ),
    );
  }
}

class _ThemeModeButton extends ConsumerWidget {
  const _ThemeModeButton();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final current = ref.watch(appThemeModeProvider);
    return PopupMenuButton<ThemeMode>(
      tooltip: 'تم برنامه',
      icon: Icon(switch (current) { ThemeMode.light => Icons.light_mode_outlined, ThemeMode.dark => Icons.dark_mode_outlined, ThemeMode.system => Icons.brightness_auto_outlined }),
      initialValue: current,
      onSelected: (mode) => ref.read(appThemeModeProvider.notifier).set(mode),
      itemBuilder: (_) => const [
        PopupMenuItem(value: ThemeMode.system, child: Text('سیستم')),
        PopupMenuItem(value: ThemeMode.light, child: Text('روشن')),
        PopupMenuItem(value: ThemeMode.dark, child: Text('تیره')),
      ],
    );
  }
}
