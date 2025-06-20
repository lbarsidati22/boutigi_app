import 'package:boutigi_app/constants.dart';
import 'package:boutigi_app/core/widgets/search_text_feild.dart';
import 'package:boutigi_app/features/home/presentation/widgets/best_sealing_header.dart';
import 'package:boutigi_app/features/home/presentation/widgets/best_selling_grid.dart';
import 'package:boutigi_app/features/home/presentation/widgets/custom_home_app_bar.dart';
import 'package:boutigi_app/features/home/presentation/widgets/featured_list.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                CustomHomeAppBar(),
                SizedBox(height: kTopPadding),
                SearchTextFeild(
                  hintText:
                      'ابحث عن المنتجات ...',
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                FeaturedList(),
                SizedBox(
                  height: size.height * 0.005,
                ),
                BestSealingHeader(),
                SizedBox(
                  height: size.height * 0.005,
                ),
              ],
            ),
          ),
          BestSellingGrid(),
        ],
      ),
    );
  }
}
