import 'package:boutigi_app/core/widgets/build_appbar.dart';
import 'package:boutigi_app/features/best_selling_fruits/presentation/widgets/best_selling_view_body.dart';
import 'package:flutter/material.dart';

class BestSellingView extends StatelessWidget {
  const BestSellingView({super.key});
  static const String routeName = '/best-selling';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        title: 'الاكثر مبيعا',
        context: context,
        isNotification: true,
      ),
      body: SafeArea(
        child: BestSellingViewBody(),
      ),
    );
  }
}
