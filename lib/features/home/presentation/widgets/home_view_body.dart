import 'package:boutigi_app/constants.dart';
import 'package:boutigi_app/core/widgets/search_text_feild.dart';
import 'package:boutigi_app/features/home/presentation/widgets/custom_home_app_bar.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
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
                SizedBox(height: kTopPadding),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
