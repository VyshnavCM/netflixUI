import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SearchTextTitle extends StatelessWidget {
  String title;
   SearchTextTitle({
    super.key,
   required this.title
  });

  @override
  Widget build(BuildContext context) {
    return  Text(
      title,
      style:const TextStyle(
        fontSize: 19,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}