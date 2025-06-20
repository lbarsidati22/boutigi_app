import 'package:boutigi_app/core/helper_functions/get_user.dart';
import 'package:boutigi_app/core/utils/app_images.dart';
import 'package:boutigi_app/core/utils/app_text_styles.dart';
import 'package:boutigi_app/core/widgets/notification_widget.dart';
import 'package:flutter/material.dart';

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
      trailing: NotificationWidget(),
      title: Text(
        'صباح الخير ...!',
        style: TextStyles.regular16.copyWith(
          color: Colors.grey.shade600,
        ),
      ),
      subtitle: Text(
        getUser().name,
        style: TextStyles.bold16.copyWith(
          color: Colors.black,
        ),
      ),
    );
  }
}
