import 'package:boutigi_app/core/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    //  final size = MediaQuery.sizeOf(context);
    return Container(
      // width: size.width * 0.09,
      // height: size.height * 0.09,
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xffe6fbed),
      ),
      child: SvgPicture.asset(
        // ignore: deprecated_member_use
        Assets.imagesNotification,
      ),
    );
  }
}
