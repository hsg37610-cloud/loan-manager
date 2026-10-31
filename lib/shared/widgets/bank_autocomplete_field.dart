import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:loan_manager/core/data/iranian_banks.dart';

class BankAutocompleteField extends StatelessWidget {
  final String? initialValue;
  final ValueChanged<String> onSelected;
  final String? Function(String?)? validator;
  const BankAutocompleteField({super.key, this.initialValue, required this.onSelected, this.validator});

  @override
  Widget build(BuildContext context) {
    return Autocomplete<String>(
      initialValue: TextEditingValue(text: initialValue ?? ''),
      optionsBuilder: (textEditingValue) {
        if (textEditingValue.text.isEmpty) return IranianBanks.all;
        return IranianBanks.all.where((bank) => bank.contains(textEditingValue.text));
      },
      onSelected: onSelected,
      fieldViewBuilder: (context, controller, focusNode, onSubmit) {
        return TextFormField(
          controller: controller, focusNode: focusNode, validator: validator,
          decoration: const InputDecoration(labelText: 'نام بانک', prefixIcon: Icon(Icons.account_balance_rounded), border: OutlineInputBorder()),
          onFieldSubmitted: (_) => onSubmit(), onChanged: onSelected,
        );
      },
      optionsViewBuilder: (context, onSelectedOption, options) {
        return Align(
          alignment: Alignment.topRight,
          child: Material(
            elevation: 4, borderRadius: BorderRadius.circular(8),
            child: SizedBox(
              width: MediaQuery.of(context).size.width - 32, height: 260,
              child: ListView.builder(
                padding: EdgeInsets.zero, itemCount: options.length,
                itemBuilder: (context, index) {
                  final bank = options.elementAt(index);
                  return ListTile(
                    leading: _BankLogo(bankName: bank, size: 28),
                    title: Text(bank), onTap: () => onSelectedOption(bank),
                  );
                },
              ),
            ),
          ),
        );
      },
    );
  }
}

class BankLogoPreview extends StatelessWidget {
  final String? bankName;
  const BankLogoPreview({super.key, required this.bankName});
  @override
  Widget build(BuildContext context) {
    if (bankName == null || bankName!.isEmpty) return const SizedBox.shrink();
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Row(children: [
        _BankLogo(bankName: bankName!, size: 36), const SizedBox(width: 8),
        Expanded(child: Text(bankName!, style: const TextStyle(fontWeight: FontWeight.bold))),
      ]),
    );
  }
}

class _BankLogo extends StatelessWidget {
  final String bankName; final double size;
  const _BankLogo({required this.bankName, required this.size});
  @override
  Widget build(BuildContext context) {
    final asset = IranianBanks.logoAssetFor(bankName);
    if (asset == null) return CircleAvatar(radius: size / 2, child: Icon(Icons.account_balance_rounded, size: size * 0.55));
    return ClipRRect(
      borderRadius: BorderRadius.circular(6),
      child: SvgPicture.asset(
        asset,
        width: size,
        height: size,
        fit: BoxFit.contain,
        placeholderBuilder: (_) => CircleAvatar(radius: size / 2, child: Icon(Icons.account_balance_rounded, size: size * 0.55)),
      ),
    );
  }
}
