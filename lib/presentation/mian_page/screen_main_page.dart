import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/presentation/downloads/screen_downloads.dart';
import 'package:netflix/presentation/home/screen_home.dart';
import 'package:netflix/presentation/mian_page/widgets/bottom_nav.dart';
import 'package:netflix/presentation/hot_and_new/screen_new_and_hot.dart';
import 'package:netflix/presentation/search/screen_search.dart';

class ScreenMainPage extends StatelessWidget {
   ScreenMainPage({super.key});
  final _pages = [
    const ScreenHome(),
    const ScreenNewAndHot(),
    const ScreenSearch(),
    ScreenDownloads(),
    
    
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: ValueListenableBuilder(valueListenable: indexChangeNotifier, builder:(context,int index, _) {
          return _pages[index];
        }),
      ),
      bottomNavigationBar: const BottomNavigationWidget()
    );
  }
}
