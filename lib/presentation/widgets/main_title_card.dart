// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:netflix/models/movies.dart';
import 'package:netflix/presentation/widgets/main_card.dart';
import 'package:netflix/presentation/widgets/main_titlle.dart';

import '../../core/constatnts.dart';

class MainTitleCard extends StatelessWidget {
  const MainTitleCard(
      {super.key, required this.title, required this.listNotifier});
  final String title;
  final ValueNotifier<List<Movie>> listNotifier;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainTitle(title: title),
        KHeight10,
        LimitedBox(
          maxHeight: 200,
          child: ValueListenableBuilder(
            valueListenable: listNotifier,
            builder: (context, value, _) {
              return ListView.builder(
                itemCount: value.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                var data = value[index];
                return MainCard(
                  movie : data
                );
              },

              );
            },
           
          ),
        )
      ],
    );
  }
}

// ignore: must_be_immutable
