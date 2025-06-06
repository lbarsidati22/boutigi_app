import 'package:boutigi_app/constants.dart';
import 'package:boutigi_app/core/services/shared_pfer_singilton.dart';
import 'package:boutigi_app/core/utils/animate_do.dart';
import 'package:boutigi_app/core/utils/app_text_styles.dart';
import 'package:boutigi_app/features/auth/presintasion/views/login_view.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class PageViewItem
    extends StatelessWidget {
  const PageViewItem({
    super.key,
    required this.image,
    required this.backGrounImage,
    required this.subtitle,
    required this.title,
    required this.isVasibel,
  });
  final String image, backGrounImage;
  final String subtitle;
  final Widget title;
  final bool isVasibel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height:
              MediaQuery.sizeOf(
                context,
              ).height *
              0.5,
          child: Stack(
            children: [
              Positioned.fill(
                child: SvgPicture.asset(
                  backGrounImage,
                  fit: BoxFit.fill,
                  //   color: Colors.orangeAccent,
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: CustomFadeInDown(
                  duration: 400,
                  child:
                      SvgPicture.asset(
                        image,
                      ),
                ),
              ),
              Visibility(
                visible: isVasibel,
                child: GestureDetector(
                  onTap: () {
                    SharedPferSingilton.setBool(
                      isOnBordingSeen,
                      true,
                    );
                    Navigator.pushReplacementNamed(
                      context,
                      LoginView
                          .routeName,
                    );
                  },
                  child: Padding(
                    padding:
                        EdgeInsets.all(
                          16,
                        ),
                    child: Text(
                      'تخط',
                      style: TextStyles
                          .regular13,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height:
              MediaQuery.sizeOf(
                context,
              ).height *
              0.030,
        ),
        CustomFadeInLeft(
          duration: 400,
          child: title,
        ),
        SizedBox(height: 24),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 37,
          ),
          child: CustomFadeInRight(
            duration: 400,
            child: Text(
              subtitle,
              textAlign:
                  TextAlign.center,
              style: TextStyles
                  .semiBold13
                  .copyWith(
                    color: Colors
                        .grey
                        .shade800,
                  ),
            ),
          ),
        ),
      ],
    );
  }
}
