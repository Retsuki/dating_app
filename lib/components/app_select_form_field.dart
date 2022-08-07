import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppSelectFormField extends StatelessWidget {
  const AppSelectFormField({
    super.key,
    required this.labelText,
    this.obscureText = false,
    this.color,
    this.textColor = Colors.black,
    this.hintText,
    this.validator,
    this.keyboardType,
    this.inputFormatters,
    this.onChanged,
    this.focusNode,
    this.controller,
    this.autoFocus = true,
    required this.shrinkWrap,
    this.contentMaxHeight,
    required this.actionItems,
    required this.onSelectedValue,
  });

  final String labelText;
  final bool obscureText;
  final String? hintText;
  final Color? color;
  final Color textColor;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final void Function(String)? onChanged;
  final FocusNode? focusNode;
  final TextEditingController? controller;
  final bool autoFocus;
  final bool shrinkWrap;
  final double? contentMaxHeight;
  final List<String> actionItems;
  final void Function(String) onSelectedValue;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return TextFormField(
      readOnly: true,
      keyboardType: keyboardType,
      inputFormatters: inputFormatters,
      onChanged: onChanged,
      focusNode: focusNode,
      controller: controller,
      validator: validator,
      autofocus: autoFocus,
      style: TextStyle(
        color: textColor,
      ),
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100),
          borderSide: BorderSide(
            color: color ?? colorScheme.primary,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100),
          borderSide: BorderSide(color: colorScheme.error),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 24),
      ),
      onTap: () async {
        final result = await showConfirmationDialog(
          context: context,
          title: labelText,
          shrinkWrap: shrinkWrap,
          contentMaxHeight: contentMaxHeight,
          actions: actionItems
              .map(
                (item) => AlertDialogAction(
                  key: item,
                  label: item,
                ),
              )
              .toList(),
        );
        if (result != null) {
          onSelectedValue(result);
        }
      },
    );
  }
}
