import 'package:flutter/material.dart';
import 'package:netflix/core/constatnts.dart';
import 'package:netflix/models/movies.dart';

class MainCard extends StatelessWidget {
  const MainCard({
    super.key, required this.movie,
  });
  final Movie movie;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      width: 130,
      height: 180,
      // color: Colors.amber,
      decoration:  BoxDecoration(
        borderRadius: kRadius10,
        
        image:  DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
              '$imagePath${movie.posterPath}'),
        ),
      ),
    );
  }
}

