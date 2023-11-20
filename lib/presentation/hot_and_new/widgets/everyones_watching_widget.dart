import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constatnts.dart';
import 'package:netflix/models/movies.dart';
import 'package:netflix/presentation/widgets/video_widget.dart';
import 'custom_icon_widget.dart';

class EveryonesWatchingWidget extends StatelessWidget {
   EveryonesWatchingWidget({
    super.key, required this.movie,
  });
  final Movie movie;
  
  final DateFormat monthFormatter = DateFormat('MMM');
  final DateFormat dayFormatter = DateFormat('d');
  final DateFormat dayFormatterDay = DateFormat('EEEE');

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        KHeight,
         VideoWidget(image: movie.backdropPath),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
             Text(
            movie.title,
            style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                fontFamily: AutofillHints.addressCity),
          ),
              const Spacer(),
              const Row(
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
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            movie.overview,
            style: const TextStyle(fontSize: 12, color: kGreyColor),
          ),
        )
      ],
    );
  }
}