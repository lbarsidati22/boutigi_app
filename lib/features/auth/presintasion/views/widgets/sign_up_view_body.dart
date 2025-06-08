import 'package:boutigi_app/constants.dart';
import 'package:boutigi_app/core/utils/animate_do.dart';
import 'package:boutigi_app/core/utils/app_colors.dart';
import 'package:boutigi_app/core/widgets/custom_text_feild.dart';
import 'package:boutigi_app/core/widgets/have_an_account_widget.dart';
import 'package:boutigi_app/core/widgets/main_bottom.dart';
import 'package:boutigi_app/core/widgets/terms_and_condetions.dart';
import 'package:boutigi_app/features/auth/presintasion/cubits/signup_cubit/cubit/signup_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

class SignUpViewBody extends StatefulWidget {
  const SignUpViewBody({super.key});

  @override
  State<SignUpViewBody> createState() => _SignUpViewBodyState();
}

class _SignUpViewBodyState extends State<SignUpViewBody> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final userNameController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool isPassword = true;
  late bool isTermsAccepted = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kHorizentalPadding),
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              SizedBox(height: 24),
              CustomFadeInRight(
                duration: 400,
                child: CustomTextFormField(
                  keyboardType: TextInputType.emailAddress,
                  hintText: 'الاسم الكامل',
                  controller: userNameController,
                ),
              ),
              SizedBox(height: 15),
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
              SizedBox(height: 20),
              CustomFadeInLeft(
                duration: 400,
                child: TermsAndCondetions(
                  onChanged: (value) {
                    isTermsAccepted = value;
                  },
                ),
              ),
              SizedBox(height: 32),
              BlocConsumer<SignupCubit, SignupState>(
                listener: (context, state) {
                  if (state is SignupSuccess) {
                    showTopSnackBar(
                      Overlay.of(context),
                      CustomSnackBar.success(
                        backgroundColor: AppColors.primaryColor,
                        message: 'تم التسجيل بنجاح',
                      ),
                    );
                  } else if (state is SignupFaulier) {
                    showTopSnackBar(
                      Overlay.of(context),
                      CustomSnackBar.error(
                        backgroundColor: Colors.red,
                        message: state.message,
                      ),
                    );

                    // ScaffoldMessenger.of(context).showSnackBar(
                    //   SnackBar(content: Text(state.message)),
                    // );
                  }
                },
                builder: (context, state) {
                  if (state is SignupLeading) {
                    return CustomFadeInLeft(
                      duration: 400,
                      child: MainBottom(
                        onTap: () {},
                        isLoading: true,
                        text: 'تسجيل حساب جديد',
                      ),
                    );
                  }
                  return CustomFadeInLeft(
                    duration: 400,
                    child: MainBottom(
                      onTap: () {
                        if (_formKey.currentState!.validate()) {
                          if (isTermsAccepted) {
                            context
                                .read<SignupCubit>()
                                .createAccountWithAndPassword(
                                  emailController.text,
                                  passwordController.text,
                                  userNameController.text,
                                );
                          } else {
                            showTopSnackBar(
                              Overlay.of(context),
                              CustomSnackBar.error(
                                backgroundColor: Colors.red,
                                message:
                                    'يجب الموافقة على الشروط والاحكام',
                              ),
                            );
                          }
                        }
                      },
                      text: 'تسجيل حساب جديد',
                    ),
                  );
                },
              ),
              SizedBox(height: 20),
              CustomFadeInLeft(
                duration: 400,
                child: HaveAnAccountWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    userNameController.dispose();
    super.dispose();
  }
}
