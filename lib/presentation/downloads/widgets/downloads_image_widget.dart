import 'dart:math';

import 'package:flutter/material.dart';

import '../../../core/constatnts.dart';

class DownloadsImageWidget extends StatelessWidget {
  const DownloadsImageWidget({
    super.key,
    required this.imageList,
    this.angle = 0,
    required this.margin,
    required this.size,
    this.radius = 10,
  });

  final String imageList;
  final double angle;
  final EdgeInsets margin;
  final Size size;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle * pi / 180,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Container(
          margin: margin,
          width: size.width,
          height: size.width,
          decoration: BoxDecoration(
            // borderRadius: BorderRadius.circular(radius),
            image: DecorationImage(
                image: NetworkImage("$imagePath$imageList"), fit: BoxFit.contain),
          ),
        ),
      ),
    );
  }
}
