import 'package:flutter/material.dart';
import 'package:netflix/core/constatnts.dart';
import 'package:netflix/presentation/downloads/widgets/buttton_widget.dart';
import 'package:netflix/presentation/downloads/widgets/image_card_widget.dart';
import 'package:netflix/presentation/widgets/app_bar_widget.dart';

import 'widgets/smart_downloads_widget.dart';

class ScreenDownloads extends StatelessWidget {
  ScreenDownloads({super.key});

  final _widgetList = [
    KHeight,
    const SmartDownloads(),
    Section2(),
    const Section3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBarWidget(
            title: 'Downloads',
          )),
      body: ListView.builder(
        padding: const EdgeInsets.all(10),
        itemBuilder: (context, index) => _widgetList[index],
        itemCount: _widgetList.length,
      ),
    );
  }
}
