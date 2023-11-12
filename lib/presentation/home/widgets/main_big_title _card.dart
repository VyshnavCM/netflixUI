// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:netflix/presentation/home/widgets/main_big._card.dart';

import '../../../core/constatnts.dart';
import '../../widgets/main_titlle.dart';

class MainTitleBigCard extends StatelessWidget {
  const MainTitleBigCard({
    super.key,
    required this.title,
  });
  final title;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainTitle(title: title),
        KHeight10,
        LimitedBox(
          maxHeight: 270,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
              10,
              (index) => const MainBigCardWidget(),
            ),
          ),
        )
      ],
    );
    
  }
}
