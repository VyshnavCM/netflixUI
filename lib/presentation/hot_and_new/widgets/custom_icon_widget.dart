import 'package:flutter/material.dart';

import '../../../core/colors/colors.dart';

class CustomIconWidget extends StatelessWidget {
  const CustomIconWidget({
    super.key, required this.icon, required this.title, required this.iconSize,
  });
  final IconData icon;
  final String title;
  final double iconSize;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon,size:iconSize ,),
        Text(
          title,
          style: TextStyle(fontSize: 10, color: kGreyColor),
        )
      ],
    );
  }
}