import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix/controller/api/api.dart';
import 'package:netflix/core/constatnts.dart';
import 'package:netflix/presentation/home/widgets/backgroundCard.dart';
import 'package:netflix/presentation/home/widgets/categoryButtons.dart';
import 'package:netflix/presentation/home/widgets/home_app_bar_widget.dart';
import 'package:netflix/presentation/widgets/main_title_card.dart';
import 'widgets/main_big_title _card.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);
int randomIndex = 0;

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});
  fetchDatas() async {
    trendingNowListNotifeir.value = await Api().getTrendingMovies();
    topRatedListNotifeir.value = await Api().getTopRated();
    upComingListNotifeir.value = await Api().getUpComing();
    popularListNotifier.value = await Api().getPopularMovies();
    top10TvShowsInIndiaTodayListNotifeir.value = await Api().getTop10TvShowsInIndiaToday();
    final random = Random();
    randomIndex = random.nextInt(10);
  }

  @override
  Widget build(BuildContext context) {
    fetchDatas();
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50), child: HomeAppBarWidget()),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ValueListenableBuilder(
          valueListenable: scrollNotifier,
          builder: (context, value, _) {
            return NotificationListener<UserScrollNotification>(
              onNotification: (notification) {
                final ScrollDirection scrollDirection = notification.direction;
                if (scrollDirection == ScrollDirection.reverse) {
                  scrollNotifier.value = false;
                } else if (scrollDirection == ScrollDirection.forward) {
                  scrollNotifier.value = true;
                }
                return true;
              },
              child: ListView(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 5.0),
                    child: mianCategoryButtons(),
                  ),
                  KHeight,
                  FutureBuilder(
                      future: Api().getTrendingMovies(),
                      builder: (context, snapshot) => snapshot.hasData
                          ? BackgroundCard(
                              image: snapshot.data![randomIndex].posterPath)
                          : const SizedBox(
                              width: 350,
                              height: 500,
                              child: Center(
                                child: CircularProgressIndicator(),
                              ),
                            )),
                  KHeight,
                  MainTitleCard(
                    title: 'Popular on Netflix',
                    listNotifier: popularListNotifier,
                  ),
                  KHeight,
                  MainTitleCard(
                    title: 'Trending Now',
                    listNotifier: topRatedListNotifeir,
                  ),
                  KHeight,
                  MainTitleBigCard(
                    title: 'Only on Netflix',
                    listNotifier: trendingNowListNotifeir,
                  ),
                  KHeight,
                  MainTitleCard(
                    title: 'TV comedies',
                    listNotifier: top10TvShowsInIndiaTodayListNotifeir,
                  ),
                  KHeight,
                  MainTitleCard(
                    title: 'Europian Tv Shows',
                    listNotifier: upComingListNotifeir,
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
}
