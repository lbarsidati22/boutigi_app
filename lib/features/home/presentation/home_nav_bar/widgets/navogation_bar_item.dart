import 'package:boutigi_app/features/home/domain/entites/bottom_navi_bar_entity.dart';
import 'package:boutigi_app/features/home/presentation/home_nav_bar/widgets/active_item.dart';
import 'package:boutigi_app/features/home/presentation/home_nav_bar/widgets/in_active_item.dart';
import 'package:flutter/material.dart';

class NavigationBarItem extends StatelessWidget {
  const NavigationBarItem({
    super.key,
    required this.isSelected,
    required this.bottomNaviBarEntity,
  });
  final bool isSelected;
  final BottomNaviBarEntity bottomNaviBarEntity;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveItem(
            icon: bottomNaviBarEntity.activeIcon,
            title: bottomNaviBarEntity.title,
          )
        : InActiveItem(
            icon:
                bottomNaviBarEntity.inActiveIcon,
          );
  }
}
