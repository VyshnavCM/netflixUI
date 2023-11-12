// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:netflix/presentation/widgets/main_card.dart';
import 'package:netflix/presentation/widgets/main_titlle.dart';

import '../../core/constatnts.dart';

class MainTitleCard extends StatelessWidget {
  const MainTitleCard({super.key, required this.title});
  final title;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainTitle(title: title),
        KHeight10,
        LimitedBox(
          maxHeight: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
              10,
              (index) => const MainCard(),
            ),
          ),
        )
      ],
    );
  }
}

// ignore: must_be_immutable
