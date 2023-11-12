import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constatnts.dart';
import 'package:netflix/presentation/widgets/video_widget.dart';

import 'custom_icon_widget.dart';

class EveryonesWatchingWidget extends StatelessWidget {
  const EveryonesWatchingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        KHeight,
        VideoWidget(image: everonesWatchingTempImage,),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'The Crown',
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
              Spacer(),
              Row(
                children: [
                  CustomIconWidget(
                    icon: Icons.add,
                    title: 'My List', iconSize: 30,
                  ),
                  KWidth20,
                  CustomIconWidget(
                    icon: Icons.play_arrow,
                    title: 'Play', iconSize: 30,
                  ),
                  KWidth20,
                  CustomIconWidget(
                    icon: Icons.info_outline,
                    title: 'Info', iconSize: 30,
                  ),
                ],
              )
            ],
          ),
        ),
        KHeight10,
        Text(
          'Seasons comming on Saturday',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        KHeight10,
        Text(
          'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.  normal distribution of letters,',
          style: TextStyle(fontSize: 12, color: kGreyColor),
        )
      ],
    );
  }
}