import 'package:boutigi_app/core/utils/app_colors.dart';
import 'package:boutigi_app/core/utils/app_text_styles.dart';
import 'package:boutigi_app/features/best_selling_fruits/presentation/views/best_selling_view.dart';
import 'package:flutter/material.dart';

class BestSealingHeader extends StatelessWidget {
  const BestSealingHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'الاكثر مبيعا',
          style: TextStyles.bold16,
        ),
        Spacer(),
        TextButton(
          onPressed: () {
            Navigator.pushNamed(
              context,
              BestSellingView.routeName,
            );
          },
          child: Text(
            'المزيد',
            style: TextStyles.regular16.copyWith(
              color: AppColors.primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
