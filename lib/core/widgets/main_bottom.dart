import 'package:boutigi_app/core/utils/app_colors.dart';
import 'package:boutigi_app/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class MainBottom extends StatelessWidget {
  const MainBottom({
    super.key,
    this.isLoading = false,
    required this.onTap,
    required this.text,
  });
  final VoidCallback onTap;
  final String text;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.sizeOf(context).height * 0.07,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: AppColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        onPressed: isLoading ? null : onTap,
        child: isLoading
            ? const CircularProgressIndicator.adaptive(
                backgroundColor: Colors.white,
              )
            : Text(
                text,
                style: TextStyles.bold16.copyWith(
                  color: Colors.white,
                ),
              ),
      ),
    );
  }
}
