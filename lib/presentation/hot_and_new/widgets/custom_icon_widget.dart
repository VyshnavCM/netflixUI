import 'package:flutter/material.dart';

import '../../../core/colors/colors.dart';

class CustomIconWidget extends StatelessWidget {
  const CustomIconWidget({
    super.key, required this.icon, required this.title,
  });
  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon),
        Text(
          title,
          style: TextStyle(fontSize: 10, color: kGreyColor),
        )
      ],
    );
  }
}