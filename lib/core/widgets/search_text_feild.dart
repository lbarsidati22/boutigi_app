import 'package:boutigi_app/core/utils/app_images.dart';
import 'package:boutigi_app/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class SearchTextFeild extends StatelessWidget {
  const SearchTextFeild({
    super.key,
    this.onChanged,
    this.controller,
    this.suffixIcon,
    this.prefixIcon,
    this.hintText,
    this.maxLength,
    this.maxLines,
  });
  final String? Function(String?)? onChanged;
  final TextEditingController? controller;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final String? hintText;
  final int? maxLength;
  final int? maxLines;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return SizedBox(
      height: size.height * 0.08,
      child: Card(
        elevation: 1.2,
        shape: buildBorder(),

        color: Colors.white,
        child: TextField(
          controller: controller,
          onChanged: onChanged,
          keyboardType: TextInputType.text,
          maxLines: maxLines,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(
              vertical: 18.0,
              horizontal: 16.0,
            ),
            border: buildBorder(),
            enabledBorder: buildBorder(),
            focusedBorder: buildBorder(),
            // filled: true,
            // fillColor: Colors.grey.shade100,
            suffixIcon: SizedBox(
              width: 32,
              child: Center(
                child: SvgPicture.asset(
                  Assets.imagesFilter,
                ),
              ),
            ),
            prefixIcon: SizedBox(
              width: 32,
              child: Center(
                child: SvgPicture.asset(
                  Assets.imagesSearchIcon,
                ),
              ),
            ),
            hintText: hintText,
            hintStyle: TextStyles.bold13.copyWith(
              color: Colors.grey.shade400,
            ),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(
        color: Colors.white,
        width: 1,
      ),
    );
  }
}
