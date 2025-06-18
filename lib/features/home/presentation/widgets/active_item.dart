import 'package:boutigi_app/core/utils/app_colors.dart';
import 'package:boutigi_app/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class ActiveItem extends StatelessWidget {
  const ActiveItem({
    super.key,
    required this.image,
    required this.title,
  });
  final String image;
  final String title;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Center(
      child: Container(
        padding: EdgeInsetsDirectional.only(
          end: 16,
        ),
        decoration: ShapeDecoration(
          color: Colors.grey.shade200,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              30,
            ),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: size.width * 0.08,
              height: size.width * 0.08,
              decoration: ShapeDecoration(
                color: AppColors.primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(30),
                ),
              ),
              child: Center(
                child: SvgPicture.asset(image),
              ),
            ),

            SizedBox(width: size.width * 0.02),
            Text(
              title,
              style: TextStyles.semiBold13
                  .copyWith(
                    color: AppColors.primaryColor,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
