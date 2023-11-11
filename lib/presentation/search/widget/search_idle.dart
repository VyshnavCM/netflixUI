import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/constatnts.dart';
import 'package:netflix/presentation/search/widget/title.dart';
// import 'package:netflix/core/constatnts.dart';

const imageUrl =
    'https://www.themoviedb.org/t/p/w355_and_h200_multi_faces/1jKBfRyeyJvBkJSKvNQ4nhIzTSx.jpg';

class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           SearchTextTitle(title:'Recommended TV Shows & Movies',),
          // KHeight
          Expanded(
            child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) => const TopSearchItemTile(),
              separatorBuilder: (context, index) => KHeight10,
              itemCount: 10,
            ),
          )
        ],
      ),
    );
  }
}



class TopSearchItemTile extends StatelessWidget {
  const TopSearchItemTile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width: screenWidth * .35,
          height: 80,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(imageUrl), fit: BoxFit.cover)),
        ),
        KWidth,
        const Expanded(
            child: Text(
          'Movie Name',
          style: TextStyle(
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
