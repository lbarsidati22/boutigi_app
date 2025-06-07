import 'package:boutigi_app/constants.dart';
import 'package:boutigi_app/core/utils/animate_do.dart';
import 'package:boutigi_app/core/widgets/custom_text_feild.dart';
import 'package:boutigi_app/core/widgets/have_an_account_widget.dart';
import 'package:boutigi_app/core/widgets/main_bottom.dart';
import 'package:boutigi_app/core/widgets/terms_and_condetions.dart';
import 'package:flutter/material.dart';

class SignUpViewBody
    extends StatefulWidget {
  const SignUpViewBody({super.key});

  @override
  State<SignUpViewBody> createState() =>
      _SignUpViewBodyState();
}

class _SignUpViewBodyState
    extends State<SignUpViewBody> {
  final emailController =
      TextEditingController();
  final passwordController =
      TextEditingController();
  final userNameController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: kHorizentalPadding,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 24),
            CustomFadeInRight(
              duration: 400,
              child: CustomTextFormField(
                keyboardType:
                    TextInputType
                        .emailAddress,
                hintText:
                    'الاسم الكامل',
                controller:
                    userNameController,
              ),
            ),
            SizedBox(height: 15),
            CustomFadeInRight(
              duration: 400,
              child: CustomTextFormField(
                keyboardType:
                    TextInputType
                        .emailAddress,
                hintText:
                    'البريد الالكتروني',
                controller:
                    emailController,
              ),
            ),
            SizedBox(height: 15),
            CustomFadeInRight(
              duration: 400,
              child: CustomTextFormField(
                suffixIcon: Icon(
                  Icons.visibility,
                  color: Colors
                      .grey
                      .shade400,
                ),
                keyboardType:
                    TextInputType
                        .visiblePassword,
                hintText: 'كلمة المرور',
                controller:
                    passwordController,
              ),
            ),
            SizedBox(height: 20),
            CustomFadeInLeft(
              duration: 400,
              child:
                  TermsAndCondetions(),
            ),
            SizedBox(height: 32),
            CustomFadeInLeft(
              duration: 400,
              child: MainBottom(
                onTap: () {},
                text: 'انشاء حساب جديد',
              ),
            ),
            SizedBox(height: 20),
            CustomFadeInLeft(
              duration: 400,
              child:
                  HaveAnAccountWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
