import 'package:boutigi_app/constants.dart';
import 'package:boutigi_app/core/utils/app_colors.dart';
import 'package:boutigi_app/core/widgets/main_bottom.dart';
import 'package:boutigi_app/features/auth/presintasion/views/login_view.dart';
import 'package:boutigi_app/features/on_bording/presintasion/views/widgets/on_bording_page_view_widget.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class OnBordingnViewBody
    extends StatefulWidget {
  const OnBordingnViewBody({super.key});

  @override
  State<OnBordingnViewBody>
  createState() =>
      _OnBordingnViewBodyState();
}

class _OnBordingnViewBodyState
    extends State<OnBordingnViewBody> {
  late PageController pageController;
  var curreentPage = 0;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      curreentPage = pageController
          .page!
          .round();
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child:
              OnBordingPageViewWidget(
                pageController:
                    pageController,
              ),
        ),
        DotsIndicator(
          dotsCount: 2,
          decorator: DotsDecorator(
            activeColor:
                AppColors.primaryColor,
            color: curreentPage == 1
                ? AppColors.primaryColor
                : AppColors.primaryColor
                      .withOpacity(.5),
          ),
        ),
        SizedBox(height: 29),
        Visibility(
          visible: curreentPage == 1
              ? true
              : false,
          maintainAnimation: true,
          maintainSize: true,
          maintainState: true,
          child: Padding(
            padding:
                EdgeInsets.symmetric(
                  horizontal:
                      kHorizentalPadding,
                ),
            child: MainBottom(
              onTap: () {
                Navigator.pushReplacementNamed(
                  context,
                  LoginView.routeName,
                );
              },
              text: ' ابدأ الان ',
            ),
          ),
        ),
        SizedBox(height: 43),
      ],
    );
  }
}
