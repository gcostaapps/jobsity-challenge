import 'package:flutter/material.dart';
import '../../theme/theme.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
    required this.controller,
    required this.onComplete,
    this.hint,
    this.iconData,
    this.inputType = TextInputType.text,
  }) : super(key: key);

  final String? hint;
  final TextEditingController controller;
  final Function(String) onComplete;
  final IconData? iconData;
  final TextInputType inputType;

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(12)),
      borderSide: BorderSide(
        color: AppColors(context.isLightMode).textColor500,
      ),
    );
    return TextField(
      decoration: InputDecoration(
        fillColor: AppColors(context.isLightMode).textColor600,
        filled: true,
        prefixIcon: iconData != null
            ? Icon(
                iconData!,
                color: context.colorScheme.onBackground,
              )
            : null,
        hintText: hint,
        hintStyle: context.textTheme.bodyText1!.copyWith(
          color: context.colorScheme.onBackground,
          fontWeight: FontWeight.w500,
        ),
        enabledBorder: border,
        border: border,
      ),
      style: context.textTheme.bodyText1!.copyWith(
        fontWeight: FontWeight.w500,
      ),
      controller: controller,
      keyboardType: inputType,
      onEditingComplete: () => onComplete(controller.text),
    );
  }
}
