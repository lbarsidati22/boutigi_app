import 'package:boutigi_app/core/utils/app_images.dart';
import 'package:boutigi_app/core/utils/app_text_styles.dart';
import 'package:boutigi_app/features/home/presentation/tabs/home_tab/widgets/featured_item_button.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg_flutter.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart'
    as svg;

class FeaturedItem extends StatelessWidget {
  const FeaturedItem({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    var itemWidth = size.width - 32;
    return ClipRRect(
      borderRadius: BorderRadius.circular(4),
      child: SizedBox(
        width: itemWidth,
        child: AspectRatio(
          aspectRatio: 342 / 158,
          child: Stack(
            //  clipBehavior: Clip.none,
            children: [
              Positioned(
                left: 0,
                bottom: 0,
                top: 0,
                right: itemWidth * 0.4,
                child: SvgPicture.asset(
                  Assets.imagesPageViewItem2Image,
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                width: itemWidth * 0.5,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: svg.Svg(
                      Assets
                          .imagesFeaturedItemBackground,
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.only(
                        start: size.width * 0.05,
                      ),
                  child: Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height:
                            size.height * 0.02,
                      ),
                      Text(
                        'عروض العيد',
                        style: TextStyles
                            .regular13
                            .copyWith(
                              color: Colors.white,
                            ),
                      ),
                      Spacer(),

                      Text(
                        'خصم 25%',
                        style: TextStyles.bold19
                            .copyWith(
                              color: Colors.white,
                            ),
                      ),
                      SizedBox(
                        height:
                            size.height * 0.015,
                      ),
                      FeaturedItemButton(
                        onTap: () {},
                      ),
                      SizedBox(
                        height:
                            size.height * 0.04,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
