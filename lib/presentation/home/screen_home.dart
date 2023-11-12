import 'package:flutter/material.dart';
import 'package:netflix/core/constatnts.dart';
import 'package:netflix/presentation/widgets/main_title_card.dart';

import 'widgets/main_big_title _card.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children:[
              MainTitleCard(
                title: 'Popular on Netflix',
              ),
              KHeight,
              MainTitleCard(
                title: 'Trending Now',
              ),
              KHeight,
              MainTitleBigCard(title: 'Only on Netflix'),
              KHeight,
              MainTitleCard(
                title: 'TV comedies',
              ),
              KHeight,
              MainTitleCard(
                title: 'Europian Tv Shows',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
