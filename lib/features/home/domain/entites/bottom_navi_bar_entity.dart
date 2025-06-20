import 'package:flutter/material.dart';

class BottomNaviBarEntity {
  final IconData activeIcon, inActiveIcon;
  final String title;

  BottomNaviBarEntity({
    required this.activeIcon,
    required this.inActiveIcon,
    required this.title,
  });
}

List<BottomNaviBarEntity>
get bottomNaviBarItems => [
  BottomNaviBarEntity(
    activeIcon: Icons.home,
    inActiveIcon: Icons.home_outlined,
    title: 'الرئيسية',
  ),
  BottomNaviBarEntity(
    activeIcon: Icons.category,
    inActiveIcon: Icons.category_outlined,
    title: 'المنتجات',
  ),

  BottomNaviBarEntity(
    activeIcon: Icons.shopping_cart,
    inActiveIcon: Icons.shopping_cart_outlined,
    title: 'سلة التسوق',
  ),
  BottomNaviBarEntity(
    activeIcon: Icons.person,
    inActiveIcon: Icons.person_outlined,
    title: 'حسابي',
  ),
];
