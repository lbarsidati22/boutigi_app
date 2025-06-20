import 'package:flutter/material.dart';

class InActiveItem extends StatelessWidget {
  const InActiveItem({
    super.key,
    required this.icon,
  });
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Icon(icon);
  }
}
