import 'package:boutigi_app/core/widgets/fruit_item.dart';
import 'package:flutter/material.dart';

class BestSellingGrid extends StatelessWidget {
  const BestSellingGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return SliverGrid.builder(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,

            childAspectRatio: 163 / 214,
            mainAxisSpacing: size.width * 0.03,
            crossAxisSpacing: size.width * 0.04,
          ),
      itemBuilder: (context, index) {
        return FruitItem();
      },
      itemCount: 4,
    );
  }
}
