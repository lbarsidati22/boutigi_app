import 'package:boutigi_app/core/utils/app_colors.dart';
import 'package:boutigi_app/core/utils/app_text_styles.dart';
import 'package:boutigi_app/features/auth/presintasion/views/sign_up_view.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class DonHaveAnAccountWidget
    extends StatelessWidget {
  const DonHaveAnAccountWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
            recognizer:
                TapGestureRecognizer()
                  ..onTap = () {
                    Navigator.pushNamed(
                      context,
                      SignUpView
                          .routeName,
                    );
                  },
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
}
