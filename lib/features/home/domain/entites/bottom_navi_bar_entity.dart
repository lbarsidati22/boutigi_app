import 'package:boutigi_app/core/utils/app_images.dart';

class BottomNaviBarEntity {
  final String activeImage, inActiveImage;
  final String title;

  BottomNaviBarEntity({
    required this.activeImage,
    required this.inActiveImage,
    required this.title,
  });
}

List<BottomNaviBarEntity>
get bottomNaviBarItems => [
  BottomNaviBarEntity(
    activeImage: Assets.imagesVuesaxBoldHome,
    inActiveImage: Assets.imagesVuesaxOutlineHome,
    title: 'الرئيسية',
  ),
  BottomNaviBarEntity(
    activeImage: Assets.imagesVuesaxBoldProducts,
    inActiveImage:
        Assets.imagesVuesaxOutlineProducts,
    title: 'المنتجات',
  ),

  BottomNaviBarEntity(
    activeImage:
        Assets.imagesVuesaxBoldShoppingCart,
    inActiveImage:
        Assets.imagesVuesaxOutlineShoppingCart,
    title: 'سلة التسوق',
  ),
  BottomNaviBarEntity(
    activeImage: Assets.imagesVuesaxBoldUser,
    inActiveImage: Assets.imagesVuesaxOutlineUser,
    title: 'حسابي',
  ),
];
