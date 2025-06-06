import 'package:boutigi_app/constants.dart';
import 'package:boutigi_app/core/utils/app_colors.dart';
import 'package:boutigi_app/core/widgets/main_bottom.dart';
import 'package:boutigi_app/features/on_bording/presintasion/views/widgets/on_bording_page_view_widget.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class OnBordingnViewBody
    extends StatelessWidget {
  const OnBordingnViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child:
              OnBordingPageViewWidget(),
        ),
        DotsIndicator(
          dotsCount: 2,
          decorator: DotsDecorator(
            color: AppColors
                .primaryColor
                .withOpacity(.5),
            activeColor:
                AppColors.primaryColor,
          ),
        ),
        SizedBox(height: 29),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal:
                kHorizentalPadding,
          ),
          child: MainBottom(
            onTap: () {},
            text: ' ابدأ الان ',
          ),
        ),
        SizedBox(height: 43),
      ],
    );
  }
}
