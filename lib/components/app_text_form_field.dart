import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTextFormField extends StatefulWidget {
  const AppTextFormField({
    super.key,
    required this.labelText,
    this.obscureText = false,
    this.color,
    this.textColor = Colors.black,
    this.hintText,
    this.validator,
    this.keyboardType,
    this.minLines = 1,
    this.maxLines,
    this.inputFormatters,
    this.onChanged,
    this.focusNode,
    this.controller,
    this.autoFocus = true,
    this.contentPadding,
    this.borderRadius = 100,
    this.isDense = false,
  });

  final String labelText;
  final bool obscureText;
  final String? hintText;
  final Color? color;
  final Color textColor;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final int? minLines;
  final int? maxLines;
  final List<TextInputFormatter>? inputFormatters;
  final void Function(String)? onChanged;
  final FocusNode? focusNode;
  final TextEditingController? controller;
  final bool autoFocus;
  final EdgeInsetsGeometry? contentPadding;
  final double borderRadius;
  final bool? isDense;

  @override
  State<AppTextFormField> createState() => _AppTextFormFieldState();
}

class _AppTextFormFieldState extends State<AppTextFormField> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return TextFormField(
      obscureText: widget.obscureText && _isObscure,
      keyboardType: widget.keyboardType,
      minLines: widget.minLines,
      maxLines: widget.maxLines,
      inputFormatters: widget.inputFormatters,
      onChanged: widget.onChanged,
      focusNode: widget.focusNode,
      controller: widget.controller,
      validator: widget.validator,
      autofocus: widget.autoFocus,
      style: TextStyle(
        color: widget.textColor,
      ),
      decoration: InputDecoration(
        isDense: widget.isDense,
        labelText: widget.labelText,
        hintText: widget.hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.borderRadius),
          borderSide: BorderSide(
            color: widget.color ?? colorScheme.primary,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.borderRadius),
          borderSide: BorderSide(color: colorScheme.error),
        ),
        contentPadding:
            widget.contentPadding ?? const EdgeInsets.symmetric(horizontal: 24),
        suffixIcon: widget.obscureText
            ? IconButton(
                icon: Icon(
                  _isObscure ? Icons.visibility_off : Icons.visibility,
                  color: widget.color ?? colorScheme.primary,
                ),
                onPressed: () {
                  setState(() {
                    _isObscure = !_isObscure;
                  });
                },
              )
            : null,
      ),
    );
  }
}

class BirthdayTextInputFormatter extends TextInputFormatter {
  BirthdayTextInputFormatter({this.separator = '/'});

  final String separator;

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    final noSeparatorNewText = newValue.text.replaceAll(separator, '');
    final lenNoSeparatorNewText = noSeparatorNewText.length;

    var offset = 0;
    final buffer = StringBuffer();
    for (var i = 1; i <= lenNoSeparatorNewText; i++) {
      buffer.write(noSeparatorNewText.substring(offset, i));

      if ((i == 4 || i == 6) && i != lenNoSeparatorNewText) {
        buffer.write(separator);
      }

      offset = i;
    }

    return newValue.copyWith(
      text: buffer.toString(),
      selection: TextSelection.collapsed(offset: buffer.length),
    );
  }
}
