import 'package:flutter/material.dart';
import 'package:netflix/presentation/hot_and_new/widgets/custom_icon_widget.dart';
import 'package:netflix/presentation/widgets/video_widget.dart';

import '../../../core/colors/colors.dart';
import '../../../core/constatnts.dart';
import '../../../models/movies.dart';
import 'package:intl/intl.dart';

class CommingSoonWidget extends StatelessWidget {
  CommingSoonWidget({
    super.key,
    required this.movie,
  });
  final Movie movie;
  final DateFormat monthFormatter = DateFormat('MMM');
  final DateFormat dayFormatter = DateFormat('dd');
  final DateFormat dayFormatterDay = DateFormat('EEEE');
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        children: [
          SizedBox(
            width: 70,
            height: 450,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    monthFormatter
                        .format(DateTime.parse(movie.releaseDate))
                        .toUpperCase(),
                    style: const TextStyle(
                        fontSize: 15,
                        color: kGreyColor,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    dayFormatter.format(DateTime.parse(movie.releaseDate)),
                    style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontFamily: AutofillHints.addressCity,
                        letterSpacing: 2),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            width: size.width - 80,
            height: 450,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                VideoWidget(
                  image: movie.backdropPath,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        movie.title,
                      ),
                      const Spacer(),
                      const Row(
                        children: [
                          CustomIconWidget(
                            icon: Icons.notifications_none_outlined,
                            title: 'Remind me',
                            iconSize: 18,
                          ),
                          KWidth20,
                          CustomIconWidget(
                            icon: Icons.info_outline,
                            title: 'info',
                            iconSize: 18,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Text(
                  'Coming On ${dayFormatter.format(DateTime.parse(movie.releaseDate))} ${monthFormatter.format(DateTime.parse(movie.releaseDate))}',
                ),
                KHeight10,
                Text(
                  movie.overview,
                  style: const TextStyle(fontSize: 12, color: kGreyColor),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
