import 'package:boutigi_app/core/utils/app_images.dart';
import 'package:boutigi_app/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg_flutter.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image(
        image: AssetImage(
          Assets.imagesProfileImage,
        ),
      ),
      trailing: Container(
        width: 35,
        height: 35,
        padding: const EdgeInsets.all(6),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.grey.shade200,
        ),
        child: SvgPicture.asset(
          Assets.imagesNotification,
        ),
      ),
      title: Text(
        'صباح الخير ...!',
        style: TextStyles.regular16.copyWith(
          color: Colors.grey.shade600,
        ),
      ),
      subtitle: Text(
        'محمد علي',
        style: TextStyles.bold16.copyWith(
          color: Colors.black,
        ),
      ),
    );
  }
}
