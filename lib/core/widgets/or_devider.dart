import 'package:boutigi_app/core/utils/animate_do.dart';
import 'package:boutigi_app/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class OrDevider
    extends StatelessWidget {
  const OrDevider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomFadeInRight(
            duration: 400,
            child: Divider(),
          ),
        ),
        SizedBox(width: 18),
        CustomFadeInUp(
          duration: 400,
          child: Text(
            'أو',
            style:
                TextStyles.semiBold16,
          ),
        ),
        SizedBox(width: 18),
        Expanded(
          child: CustomFadeInLeft(
            duration: 400,
            child: Divider(),
          ),
        ),
      ],
    );
  }
}
