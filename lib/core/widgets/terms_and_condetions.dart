import 'package:boutigi_app/core/utils/app_colors.dart';
import 'package:boutigi_app/core/utils/app_text_styles.dart';
import 'package:boutigi_app/core/widgets/custom_check_box.dart';
import 'package:flutter/material.dart';

class TermsAndCondetions
    extends StatefulWidget {
  const TermsAndCondetions({super.key});

  @override
  State<TermsAndCondetions>
  createState() =>
      _TermsAndCondetionsState();
}

class _TermsAndCondetionsState
    extends State<TermsAndCondetions> {
  bool isTarmsAccepted = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomCheckBox(
          onChaked: (value) {
            isTarmsAccepted = value;
            setState(() {});
          },
          isChcked: isTarmsAccepted,
        ),
        SizedBox(width: 16),
        Expanded(
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text:
                      'من خلال انشاء الحساب فانك توافق على ',
                  style: TextStyles
                      .semiBold13
                      .copyWith(
                        color:
                            Colors.grey,
                      ),
                ),
                TextSpan(
                  text: ' ',
                  style: TextStyles
                      .semiBold13
                      .copyWith(
                        color:
                            Colors.grey,
                      ),
                ),
                TextSpan(
                  // recognizer:
                  //     TapGestureRecognizer()
                  //       ..onTap = () {
                  //         Navigator.pushNamed(
                  //           context,
                  //           SignUpView
                  //               .routeName,
                  //         );
                  //       },
                  text:
                      'الشروط والأحكام الخاصة بنا ',
                  style: TextStyles
                      .semiBold13
                      .copyWith(
                        color: AppColors
                            .lightPrimaryColor,
                      ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
