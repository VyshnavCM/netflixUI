import 'package:flutter/material.dart';
import '../../../core/colors/colors.dart';
import '../../../core/constatnts.dart';

class SmartDownloads extends StatelessWidget {
  const SmartDownloads({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        KWidth,
        Icon(Icons.settings, color: kGreyColor),
        Text(
          'Smart Downloads',
          style: TextStyle(color: kGreyColor),
        ),
      ],
    );
  }
}
