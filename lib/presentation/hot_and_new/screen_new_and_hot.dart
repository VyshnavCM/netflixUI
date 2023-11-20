import 'package:flutter/material.dart';
import 'package:netflix/core/constatnts.dart';
import 'widgets/app_bar.dart';
import 'widgets/coming_soon_widget.dart';
import 'widgets/everyones_watching_widget.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: AppBarHotAndNew(),
        ),
        body: TabBarView(children: [
          _buildCommingSoon(),
          _buildEveryonesWatching(),
        ]),
      ),
    );
  }

  Widget _buildCommingSoon() {
    return ValueListenableBuilder(
      valueListenable: upComingListNotifeir,
      builder: (context, value, _) {
        return ListView.builder(
          itemCount: value.length,
          itemBuilder: (context, index) {
            var data = value[index];
            return CommingSoonWidget(
              movie: data,
            );
          },
        );
      },
    );
  }


    Widget _buildEveryonesWatching() {
    return ValueListenableBuilder(
        valueListenable: topRatedListNotifeir,
        builder: (context, value, _) {
          return ListView.builder(
            itemCount: value.length,
            itemBuilder: (context, index) {
              var data = value[index];
              return EveryonesWatchingWidget(
                movie: data,
              );
            },
          );
        });
  }
  // Widget _buildEveryonesWatching() {
  //   return Padding(
  //     padding: const EdgeInsets.all(8.0),
  //     child: ListView.builder(
  //       itemCount: 10,
  //       itemBuilder: (context, index) => const EveryonesWatchingWidget(),
  //     ),
  //   );
  // }
}
