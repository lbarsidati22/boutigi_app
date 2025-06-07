import 'package:boutigi_app/core/utils/app_colors.dart';
import 'package:boutigi_app/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

Text donHaveAnAccountWidget() {
  return Text.rich(
    TextSpan(
      children: [
        TextSpan(
          text: ' لا تمتلك حساب ؟',
          style: TextStyles.semiBold16
              .copyWith(
                color: Colors.grey,
              ),
        ),
        TextSpan(
          text: ' ',
          style: TextStyles.semiBold16
              .copyWith(
                color: Colors.grey,
              ),
        ),
        TextSpan(
          text: 'قم بأنشاء حساب',
          style: TextStyles.semiBold16
              .copyWith(
                color: AppColors
                    .lightPrimaryColor,
              ),
        ),
      ],
    ),
  );
}
