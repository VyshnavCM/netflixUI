import 'package:flutter/material.dart';
import '../../../core/colors/colors.dart';
import 'downloads_image_widget.dart';

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


