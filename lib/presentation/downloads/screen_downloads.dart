import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constatnts.dart';
import 'package:netflix/presentation/widgets/app_bar_widget.dart';

class ScreenDownloads extends StatelessWidget {
  ScreenDownloads({super.key});

  final _widgetList = [
    KHeight,
    const _SmartDownloads(),
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
        itemBuilder:(context, index) => _widgetList[index],
        itemCount: _widgetList.length,
      ),
    );
  }
}

class Section2 extends StatelessWidget {
  Section2({super.key});
  final List imageList = [
    "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/e7Jvsry47JJQruuezjU2X1Z6J77.jpg",
    "https://www.themoviedb.org/t/p/w220_and_h330_face/8Gxv8gSFCU0XGDykEGv7zR1n2ua.jpg",
    "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/voHUmluYmKyleFkTu3lOXQG702u.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 33,
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'Turn on Downloads for You',
            style: TextStyle(
                color: kWhiteColor, fontSize: 20, fontWeight: FontWeight.w700),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'We will download movies and shows just for you, so you will have always something to watch',
            style: TextStyle(color: kGreyColor),
          ),
        ),
        SizedBox(
          // color: kWhiteColor,
          width: size.width,
          height: size.width * .7,
          // color: Colors.white,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Center(
                child: CircleAvatar(
                  radius: size.width * .31,
                  backgroundColor: const Color.fromARGB(255, 27, 27, 27),
                ),
              ),
              DownloadsImageWidget(
                imageList: imageList[0],
                margin: const EdgeInsets.only(left: 152, bottom: 5),
                angle: 20,
                size: Size(size.width * .4, size.width * .5),
                radius: 10,
              ),
              DownloadsImageWidget(
                imageList: imageList[1],
                margin: const EdgeInsets.only(right: 152, bottom: 5),
                angle: -20,
                size: Size(size.width * .4, size.width * .5),
                radius: 10,
              ),
              DownloadsImageWidget(
                imageList: imageList[2],
                margin: const EdgeInsets.only(left: 0),
                size: Size(size.width * .5, size.width * .5),
                radius: 8,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class Section3 extends StatelessWidget {
  const Section3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: MaterialButton(
              color: kButtonColorBlue,
              onPressed: () {},
              child: const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text('Set Up'),
              ),
            ),
          ),
        ),
        KHeight,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 9.0),
          child: MaterialButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
            color: kButtonColorDarkGrey,
            onPressed: () {},
            child: const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Find More to Download',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _SmartDownloads extends StatelessWidget {
  const _SmartDownloads({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        KWidth,
        Icon(Icons.settings, color: kGreyColor),
        Text(
          'Smart Downloads',
          style: TextStyle(color: kGreyColor),
        ),
      ],
    );
  }
}

class DownloadsImageWidget extends StatelessWidget {
  const DownloadsImageWidget({
    super.key,
    required this.imageList,
    this.angle = 0,
    required this.margin,
    required this.size,
    this.radius = 10,
  });

  final String imageList;
  final double angle;
  final EdgeInsets margin;
  final Size size;
  final double radius;

  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;
    return Transform.rotate(
      angle: angle * pi / 180,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(radius),
        child: Container(
          margin: margin,
          width: size.width,
          height: size.width,
          // color: Colors.black,
          decoration: BoxDecoration(
            // borderRadius: BorderRadius.circular(radius),
            image: DecorationImage(
                image: NetworkImage(imageList), fit: BoxFit.contain),
          ),
        ),
      ),
    );
  }
}
