import 'package:boutigi_app/core/utils/app_images.dart';
import 'package:boutigi_app/features/on_bording/presintasion/views/widgets/page_view_item.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg_flutter.dart';

class OnBordingPageViewWidget extends StatelessWidget {
  const OnBordingPageViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        PageViewItem(
          image: Assets.imagesPageViewItem1Image,
          backGrounImage: Assets.imagesPageViewItem1BackgroundImage,
          subtitle:
              'اكتشف تجربة تسوق فريدة مع Boutigi. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية',
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text('مرحبًا بك في'), Text('Boutigi')],
          ),
        ),
        PageViewItem(
          image: Assets.imagesPageViewItem2Image,
          backGrounImage: Assets.imagesPageViewItem2BackgroundImage,
          subtitle:
              'نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية',
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text('ابحث وتسوق')],
          ),
        ),
      ],
    );
  }
}
