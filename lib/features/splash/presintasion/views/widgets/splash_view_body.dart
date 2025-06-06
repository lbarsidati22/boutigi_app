import 'package:boutigi_app/constants.dart';
import 'package:boutigi_app/core/services/shared_pfer_singilton.dart';
import 'package:boutigi_app/core/utils/app_images.dart';
import 'package:boutigi_app/features/auth/presintasion/views/login_view.dart';
import 'package:boutigi_app/features/on_bording/presintasion/views/on_bording_view.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class SplashViewBody
    extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() =>
      _SplashViewBodyState();
}

class _SplashViewBodyState
    extends State<SplashViewBody> {
  @override
  void initState() {
    excuteNavigation();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          CrossAxisAlignment.stretch,
      mainAxisAlignment:
          MainAxisAlignment
              .spaceBetween,
      children: [
        Row(
          mainAxisAlignment:
              MainAxisAlignment.end,
          children: [
            SvgPicture.asset(
              Assets.imagesPlant,
            ),
          ],
        ),
        SvgPicture.asset(
          Assets.imagesLogo,
        ),
        SvgPicture.asset(
          Assets.imagesSplashBottom,
          fit: BoxFit.fill,
        ),
      ],
    );
  }

  void excuteNavigation() {
    bool isOnBordingeen =
        SharedPferSingilton.getBool(
          isOnBordingSeen,
        );
    Future.delayed(
      Duration(seconds: 3),
      () {
        if (isOnBordingeen) {
          Navigator.pushReplacementNamed(
            context,
            LoginView.routeName,
          );
        } else {
          Navigator.pushReplacementNamed(
            context,
            OnBordingView.routeName,
          );
        }
      },
    );
  }
}
