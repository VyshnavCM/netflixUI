import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/constatnts.dart';
import 'package:netflix/models/movies.dart';
import 'package:netflix/presentation/search/widget/title.dart';

import '../../../controller/api/api.dart';
// import 'package:netflix/core/constatnts.dart';

const imageUrl =
    'https://www.themoviedb.org/t/p/w355_and_h200_multi_faces/1jKBfRyeyJvBkJSKvNQ4nhIzTSx.jpg';

class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             SearchTextTitle(title:'Recommended TV Shows & Movies',),
            KHeight10,
            Expanded(
              child: FutureBuilder(
            future: Api().forSearchDara(),
            builder: (context, snapshot) {
              if (snapshot.hasError ||
                  snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                return ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      var data = snapshot.data![index];
                      return TopSearchItemTile(
                        movie: data,
                      );
                    },
                    separatorBuilder: (context, index) => KHeight10,
                    itemCount: snapshot.data!.length);
              }
            },
          ),
            )
          ],
        ),
      ),
    );
  }
}



class TopSearchItemTile extends StatelessWidget {
  const TopSearchItemTile({super.key,required this.movie});
   final Movie movie;
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width: screenWidth * .35,
          height: 80,
          decoration:  BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage("$imagePath${movie.backdropPath}"), fit: BoxFit.cover)),
        ),
        KWidth,
         Expanded(
            child: Text(
          movie.title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        )),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.play_circle_outline_rounded,
              
              size: 35,
            ))
      ],
    );
  }
}
