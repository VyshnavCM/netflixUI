import 'package:flutter/material.dart';

class MainTitle extends StatelessWidget {
  MainTitle({
    super.key,
    required this.title,
  });
final  String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 19,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
