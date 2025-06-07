import 'package:boutigi_app/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class OrDevider
    extends StatelessWidget {
  const OrDevider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Divider()),
        SizedBox(width: 18),
        Text(
          'أو',
          style: TextStyles.semiBold16,
        ),
        SizedBox(width: 18),
        Expanded(child: Divider()),
      ],
    );
  }
}
