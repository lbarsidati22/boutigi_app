import 'package:boutigi_app/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class FeaturedItemButton extends StatelessWidget {
  const FeaturedItemButton({
    super.key,
    required this.onTap,
  });
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return SizedBox(
      height: size.height * 0.055,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              6,
            ),
          ),
        ),
        onPressed: onTap,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: size.width * 0.03,
          ),
          child: FittedBox(
            child: Text(
              'تسوق الان',
              style: TextStyles.bold16.copyWith(
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
