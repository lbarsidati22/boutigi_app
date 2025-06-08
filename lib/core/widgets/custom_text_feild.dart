import 'package:boutigi_app/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    this.controller,
    this.filled = true,
    this.obscureText = false,
    this.readOnly = false,
    super.key,
    this.suffixIcon,
    this.hintText,
    this.keyboardType,
    this.overrideValidator = false,
    this.prefixIcon,
    this.onChanged,
    this.maxLength,
    this.maxLines = 1,
    this.onSaved,
  });

  final String? Function(String?)? onChanged;
  final TextEditingController? controller;
  final bool filled;
  final bool obscureText;
  final bool readOnly;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final String? hintText;
  final TextInputType? keyboardType;
  final bool overrideValidator;
  final int? maxLength;
  final int? maxLines;
  final Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onSaved: onSaved,
      //  cursorColor: context.color.textColor,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return ('من فضلك ادخل البيانات');
        }
        return null;
      },
      onChanged: onChanged,
      keyboardType: keyboardType,
      obscureText: obscureText,
      maxLines: maxLines,
      readOnly: readOnly,

      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(
          vertical: 18.0,
          horizontal: 10.0,
        ),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(),

        filled: filled,
        fillColor: Colors.grey.shade100,
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        hintText: hintText,
        hintStyle: TextStyles.bold13.copyWith(
          color: Colors.grey.shade600,
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: Colors.grey.shade200, width: 1),
    );
  }
}
