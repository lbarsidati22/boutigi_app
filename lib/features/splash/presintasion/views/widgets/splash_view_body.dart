import 'package:boutigi_app/constants.dart';
import 'package:boutigi_app/core/services/firebase_auth_services.dart';
import 'package:boutigi_app/core/services/shared_pfer_singilton.dart';
import 'package:boutigi_app/core/utils/app_images.dart';
import 'package:boutigi_app/features/auth/presintasion/views/login_view.dart';
import 'package:boutigi_app/features/home/presentation/home_nav_bar/views/home_nav_bar.dart';
import 'package:boutigi_app/features/on_bording/presintasion/views/on_bording_view.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class SplashViewBody extends StatefulWidget {
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
          MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment:
              MainAxisAlignment.end,
          children: [
            SvgPicture.asset(Assets.imagesPlant),
          ],
        ),
        SvgPicture.asset(Assets.imagesLogo),
        SvgPicture.asset(
          Assets.imagesSplashBottom,
          fit: BoxFit.fill,
        ),
      ],
    );
  }

  void excuteNavigation() {
    bool isOnBordingeen = Prefs.getBool(
      isOnBordingSeen,
    );
    Future.delayed(Duration(seconds: 3), () {
      if (isOnBordingeen) {
        var isLoggedIn = FirebaseAuthServices()
            .isLogedIn();
        if (isLoggedIn) {
          Navigator.pushReplacementNamed(
            // ignore: use_build_context_synchronously
            context,
            HomeNavBar.routeName,
          );
        } else {
          Navigator.pushReplacementNamed(
            // ignore: use_build_context_synchronously
            context,
            LoginView.routeName,
          );
        }
      } else {
        Navigator.pushReplacementNamed(
          // ignore: use_build_context_synchronously
          context,
          OnBordingView.routeName,
        );
      }
    });
  }
}
