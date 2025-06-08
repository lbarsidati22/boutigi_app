import 'package:boutigi_app/core/utils/animate_do.dart';
import 'package:boutigi_app/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg_flutter.dart';

class SocialLoginBoton
    extends StatelessWidget {
  const SocialLoginBoton({
    super.key,
    required this.image,
    required this.title,
    required this.onTap,
  });
  final String image;
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(
      context,
    );
    return CustomFadeInUp(
      duration: 400,
      child: SizedBox(
        width: double.infinity,
        height: size.height * 0.07,
        child: TextButton(
          onPressed: onTap,
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(
                    12,
                  ),
              side: BorderSide(
                color: Colors
                    .grey
                    .shade200,
                width: 1,
              ),
            ),
          ),
          child: ListTile(
            visualDensity: VisualDensity(
              vertical: VisualDensity
                  .minimumDensity,
            ),
            leading: SvgPicture.asset(
              image,
            ),
            title: Text(
              title,
              textAlign:
                  TextAlign.center,
              style: TextStyles
                  .semiBold16
                  .copyWith(
                    color: Colors.black,
                  ),
            ),
          ),
        ),
      ),
    );
  }
}
