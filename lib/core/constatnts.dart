// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:netflix/models/movies.dart';

const KWidth = SizedBox(
  width: 10,
);
const KWidth20 = SizedBox(
  width: 20,
);
const KHeight = SizedBox(
  height: 20,
);
const KHeight10 = SizedBox(
  height: 10,
);

//Border Radius

final BorderRadius kRadius10 = BorderRadius.circular(10);
final BorderRadius kRadius30 = BorderRadius.circular(30);

//Image

// const kMainImage =
//     'https://www.themoviedb.org/t/p/w220_and_h330_face/voHUmluYmKyleFkTu3lOXQG702u.jpg';
// const newAndHotTempImage =
//     'https://www.themoviedb.org/t/p/w355_and_h200_multi_faces/mRmRE4RknbL7qKALWQDz64hWKPa.jpg';
// const everonesWatchingTempImage =
//     'https://www.themoviedb.org/t/p/w355_and_h200_multi_faces/aWnEtYJn31swY2pC8cOtje98bYc.jpg';

//Api key

const apiKey = "b7ba2eac8a51dd1e021e235beaf537f9";

//Image path
const imagePath = 'https://image.tmdb.org/t/p/w500';

// notifiers
ValueNotifier<List<Movie>> trendingNowListNotifeir = ValueNotifier([]);
ValueNotifier<List<Movie>> topRatedListNotifeir = ValueNotifier([]);
ValueNotifier<List<Movie>> top10TvShowsInIndiaTodayListNotifeir =
    ValueNotifier([]);
ValueNotifier<List<Movie>> upComingListNotifeir = ValueNotifier([]);
ValueNotifier<List<Movie>> popularListNotifier = ValueNotifier([]);
ValueNotifier<List<Movie>> searchResultListNotifeir = ValueNotifier([]);
