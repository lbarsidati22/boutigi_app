import 'package:boutigi_app/features/home/domain/entites/bottom_navi_bar_entity.dart';
import 'package:boutigi_app/features/home/presentation/home_nav_bar/widgets/navogation_bar_item.dart';
import 'package:flutter/material.dart';

class CustomNavBar extends StatefulWidget {
  const CustomNavBar({super.key});

  @override
  State<CustomNavBar> createState() =>
      _CustomNavBarState();
}

int selectedIndex = 0;

class _CustomNavBarState
    extends State<CustomNavBar> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Container(
      width: size.width,
      height: size.height * 0.088,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        color: Colors.white,
        shadows: [
          BoxShadow(
            // color: Colors.grey.shade400,
            blurRadius: 25,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: Row(
        children: bottomNaviBarItems
            .asMap()
            .entries
            .map((e) {
              var index = e.key;
              var entity = e.value;
              return Expanded(
                flex: selectedIndex == index
                    ? 3
                    : 2,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  child: NavigationBarItem(
                    bottomNaviBarEntity: entity,
                    isSelected:
                        selectedIndex == index,
                  ),
                ),
              );
            })
            .toList(),
      ),
    );
  }
}
