import 'package:flutter/material.dart';
import 'package:netflix/core/constatnts.dart';
import 'package:netflix/presentation/home/widgets/backgroundCard.dart';
import 'package:netflix/presentation/home/widgets/categoryButtons.dart';
import 'package:netflix/presentation/home/widgets/home_app_bar_widget.dart';
import 'package:netflix/presentation/widgets/main_title_card.dart';

import 'widgets/main_big_title _card.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50), child: HomeAppBarWidget()),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.only(left:5.0),
              child: mianCategoryButtons(),
            ),
            KHeight,
            BackgroundCard(),
            KHeight,
            const MainTitleCard(
              title: 'Popular on Netflix',
            ),
            KHeight,
            const MainTitleCard(
              title: 'Trending Now',
            ),
            KHeight,
            const MainTitleBigCard(title: 'Only on Netflix'),
            KHeight,
            const MainTitleCard(
              title: 'TV comedies',
            ),
            KHeight,
            const MainTitleCard(
              title: 'Europian Tv Shows',
            ),
          ],
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
}

