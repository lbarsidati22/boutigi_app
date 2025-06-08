import 'package:boutigi_app/core/utils/app_colors.dart';
import 'package:boutigi_app/core/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class CustomCheckBox
    extends StatelessWidget {
  const CustomCheckBox({
    super.key,
    required this.isChcked,
    required this.onChaked,
  });
  final bool isChcked;
  final ValueChanged<bool> onChaked;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onChaked(!isChcked);
      },
      child: AnimatedContainer(
        width: 24,
        height: 24,
        duration: Duration(
          milliseconds: 200,
        ),
        decoration: ShapeDecoration(
          color: isChcked
              ? AppColors.primaryColor
              : Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(
                  8,
                ),
            side: BorderSide(
              width: 1.5,
              color: isChcked
                  ? Colors.transparent
                  : Colors
                        .grey
                        .shade600,
            ),
          ),
        ),
        child: isChcked
            ? SvgPicture.asset(
                Assets.imagesCheck,
              )
            : SizedBox(),
      ),
    );
  }
}
