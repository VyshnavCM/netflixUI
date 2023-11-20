// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:netflix/presentation/home/widgets/main_big._card.dart';

import '../../../core/constatnts.dart';
import '../../../models/movies.dart';
import '../../widgets/main_titlle.dart';

class MainTitleBigCard extends StatelessWidget {
  const MainTitleBigCard({
    super.key,
    required this.title,
    required this.listNotifier,
  });
  final title;
  final ValueNotifier<List<Movie>> listNotifier;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainTitle(title: title),
        KHeight10,
        LimitedBox(
            maxHeight: 270,
            child: ValueListenableBuilder(
              valueListenable: listNotifier,
              builder: (context, value, _) {
                return ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    var data = value[index];
                    return MainBigCardWidget(
                      movie : data,
                    );
                  },
                );
              },
            ))
      ],
    );
  }
}
