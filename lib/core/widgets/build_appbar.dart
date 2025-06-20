import 'package:boutigi_app/core/utils/app_text_styles.dart';
import 'package:boutigi_app/core/widgets/notification_widget.dart';
import 'package:flutter/material.dart';

AppBar buildAppBar({
  required String title,
  required BuildContext context,
  bool isNotification = false,
}) {
  return AppBar(
    actions: [
      isNotification
          ? Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: NotificationWidget(),
            )
          : Container(),
    ],
    leading: GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Icon(Icons.arrow_back_ios_new),
    ),
    centerTitle: true,
    title: Text(title, style: TextStyles.bold19),
  );
}
