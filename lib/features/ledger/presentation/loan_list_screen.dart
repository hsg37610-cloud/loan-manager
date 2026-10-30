import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:loan_manager/core/router/app_router.dart';
import 'package:loan_manager/core/theme/theme_mode_provider.dart';
import 'package:loan_manager/features/ledger/domain/models.dart';
import 'package:loan_manager/features/ledger/presentation/ledger_providers.dart';

final NumberFormat _money = NumberFormat.decimalPattern('en');

class LoanListScreen extends ConsumerWidget {
  const LoanListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loansAsync = ref.watch(activeLoansProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('وام‌ها'), actions: const [_ThemeModeButton()]),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => context.pushNamed(AppRoutes.addLoan),
        icon: const Icon(Icons.add),
        label: const Text('افزودن وام'),
      ),
      body: loansAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, _) => Center(child: Text('خطا در بارگذاری وام‌ها\n$error', textAlign: TextAlign.center, style: TextStyle(color: Theme.of(context).colorScheme.error))),
        data: (loans) {
          if (loans.isEmpty) return const Center(child: Text('وامی یافت نشد'));
          return ListView.separated(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 96),
            itemCount: loans.length,
            separatorBuilder: (_, __) => const SizedBox(height: 12),
            itemBuilder: (context, index) => _LoanCard(loan: loans[index]),
          );
        },
      ),
    );
  }
}

class _LoanCard extends ConsumerWidget {
  const _LoanCard({required this.loan});
  final Loan loan;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final installments = ref.watch(loanInstallmentsProvider(loan.id));
    final total = installments.value?.length ?? loan.termMonths;
    final paid = installments.value?.where((i) => i.isFullyPaid).length ?? 0;
    final progress = total == 0 ? 0.0 : paid / total;

    return Card(
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: () => context.pushNamed(AppRoutes.loanDetail, pathParameters: {'id': loan.id}),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(loan.name, style: theme.textTheme.titleMedium, maxLines: 1, overflow: TextOverflow.ellipsis),
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
