import 'package:flutter/material.dart';

class PaymentOptionItem extends StatelessWidget {
  final String title;
  final bool selected;
  final VoidCallback onTap;

  const PaymentOptionItem({
    super.key,
    required this.title,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Radio(
        value: true,
        groupValue: selected,
        onChanged: (_) => onTap(),
      ),
      title: Text(title),
      onTap: onTap,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: const BorderSide(color: Colors.black12),
      ),
    );
  }
}
