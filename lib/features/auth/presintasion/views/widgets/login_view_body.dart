import 'package:boutigi_app/constants.dart';
import 'package:boutigi_app/core/utils/animate_do.dart';
import 'package:boutigi_app/core/utils/app_colors.dart';
import 'package:boutigi_app/core/utils/app_images.dart';
import 'package:boutigi_app/core/utils/app_text_styles.dart';
import 'package:boutigi_app/core/widgets/custom_text_feild.dart';
import 'package:boutigi_app/core/widgets/dont_have_an_account_widget.dart';
import 'package:boutigi_app/core/widgets/main_bottom.dart';
import 'package:boutigi_app/core/widgets/or_devider.dart';
import 'package:boutigi_app/features/auth/presintasion/views/widgets/social_login_boton.dart';
import 'package:flutter/material.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool isPassword = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kHorizentalPadding),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 24),
            CustomFadeInRight(
              duration: 400,
              child: CustomTextFormField(
                keyboardType: TextInputType.emailAddress,
                hintText: 'البريد الالكتروني',
                controller: emailController,
              ),
            ),
            SizedBox(height: 15),
            CustomFadeInRight(
              duration: 400,
              child: CustomTextFormField(
                obscureText: isPassword,

                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      isPassword = !isPassword;
                    });
                  },
                  icon: Icon(
                    isPassword
                        ? Icons.visibility_off
                        : Icons.visibility,
                  ),
                  color: Colors.grey.shade400,
                ),
                keyboardType: TextInputType.visiblePassword,
                hintText: 'كلمة المرور',
                controller: passwordController,
              ),
            ),
            SizedBox(height: 15),
            CustomFadeInLeft(
              duration: 400,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'نسيت كلمة المرور ؟',
                    style: TextStyles.semiBold16.copyWith(
                      color: AppColors.lightPrimaryColor,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 32),
            CustomFadeInLeft(
              duration: 400,
              child: MainBottom(onTap: () {}, text: 'تسجيل الدخول'),
            ),
            SizedBox(height: 20),
            CustomFadeInRight(
              duration: 400,
              child: DonHaveAnAccountWidget(),
            ),
            SizedBox(height: 20),
            OrDevider(),
            SizedBox(height: 20),
            SocialLoginBoton(
              image: Assets.imagesGoogleIcon,
              title: 'تسجيل بواسطة جوجل',
              onTap: () {},
            ),
            SizedBox(height: 10),

            SocialLoginBoton(
              image: Assets.imagesFacebookIcon,
              title: 'تسجيل بواسطة فايسبوك',
              onTap: () {},
            ),
            SizedBox(height: 10),

            SocialLoginBoton(
              image: Assets.imagesApplIcon,
              title: 'تسجيل بواسطة ابل',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
