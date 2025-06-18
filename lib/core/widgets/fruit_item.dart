import 'package:boutigi_app/core/utils/app_colors.dart';
import 'package:boutigi_app/core/utils/app_images.dart';
import 'package:boutigi_app/core/utils/app_text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FruitItem extends StatelessWidget {
  const FruitItem({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Container(
      decoration: ShapeDecoration(
        color: Colors.grey.shade200,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
      ),
      child: Stack(
        children: [
          PositionedDirectional(
            top: 0,
            start: 0,
            child: IconButton(
              onPressed: () {},
              icon: Icon(CupertinoIcons.heart),
            ),
          ),

          Positioned.fill(
            child: Column(
              children: [
                SizedBox(
                  height: size.height * 0.030,
                ),
                Image.asset(
                  Assets.imagesWatermelonTest,
                ),
                SizedBox(
                  height: size.height * 0.030,
                ),
                ListTile(
                  title: Text(
                    'بطيخ',
                    textAlign: TextAlign.start,
                    style: TextStyles.semiBold16,
                  ),
                  subtitle: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: '30 أوقية',
                          style: TextStyles.bold16
                              .copyWith(
                                color: AppColors
                                    .secondaryColor,
                              ),
                        ),
                        TextSpan(
                          text: '/',
                          style: TextStyles
                              .semiBold11
                              .copyWith(
                                color: Color(
                                  0xffedaa20,
                                ),
                              ),
                        ),
                        TextSpan(
                          text: ' ',
                          style: TextStyles
                              .semiBold11
                              .copyWith(
                                color: Color(
                                  0xffedaa20,
                                ),
                              ),
                        ),
                        TextSpan(
                          text: 'الكيلو',
                          style: TextStyles
                              .semiBold11
                              .copyWith(
                                color: Color(
                                  0xFFedaa20,
                                ),
                              ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.start,
                  ),
                  trailing: CircleAvatar(
                    radius: 20,
                    backgroundColor:
                        AppColors.primaryColor,
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
