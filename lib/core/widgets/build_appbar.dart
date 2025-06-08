import 'package:boutigi_app/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

AppBar buildAppBar({
  required String title,
  required BuildContext context,
}) {
  return AppBar(
    leading: GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Icon(
        Icons.arrow_back_ios_new,
      ),
    ),
    centerTitle: true,
    title: Text(
      title,
      style: TextStyles.bold19,
    ),
  );
}
