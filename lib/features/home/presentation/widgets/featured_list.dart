import 'package:boutigi_app/features/home/presentation/widgets/featured_item.dart';
import 'package:flutter/material.dart';

class FeaturedList extends StatelessWidget {
  const FeaturedList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(4, (index) {
          return Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 8,
            ),
            child: FeaturedItem(),
          );
        }),
      ),
    );
  }
}
