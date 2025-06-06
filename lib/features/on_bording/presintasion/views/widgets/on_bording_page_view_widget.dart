import 'package:boutigi_app/core/utils/app_images.dart';
import 'package:boutigi_app/core/utils/app_text_styles.dart';
import 'package:boutigi_app/features/on_bording/presintasion/views/widgets/page_view_item.dart';
import 'package:flutter/material.dart';

class OnBordingPageViewWidget
    extends StatelessWidget {
  const OnBordingPageViewWidget({
    super.key,
    required this.pageController,
  });
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        PageViewItem(
          isVasibel: true,
          image: Assets
              .imagesPageViewItem1Image,
          backGrounImage: Assets
              .imagesPageViewItem1BackgroundImage,
          subtitle:
              'اكتشف تجربة تسوق فريدة مع Boutigi. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية',
          title: Row(
            mainAxisAlignment:
                MainAxisAlignment
                    .center,
            children: [
              Text(
                'مرحبًا بك في',
                style:
                    TextStyles.bold23,
              ),
              Text(
                '  Boutigi  ',
                style:
                    TextStyles.bold23,
              ),
            ],
          ),
        ),
        PageViewItem(
          isVasibel: false,
          image: Assets
              .imagesPageViewItem2Image,
          backGrounImage: Assets
              .imagesPageViewItem2BackgroundImage,
          subtitle:
              'نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية',
          title: Row(
            mainAxisAlignment:
                MainAxisAlignment
                    .center,
            children: [
              Text(
                'ابحث وتسوق',
                style:
                    TextStyles.bold23,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
