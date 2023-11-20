import 'package:flutter/material.dart';
import 'package:netflix/core/constatnts.dart';
import 'package:netflix/presentation/search/widget/title.dart';

import '../../../controller/api/api.dart';
import '../../../models/movies.dart';
import '../../widgets/main_card.dart';

const imageUrl =
    "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/e7Jvsry47JJQruuezjU2X1Z6J77.jpg";

class SearchResultWidget extends StatelessWidget {
  const SearchResultWidget({super.key,required this.result});
  final String result;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchTextTitle(title: 'Movies & TV'),
        KHeight10,
        Expanded(
            child: FutureBuilder<List<Movie>>(
            future: Api().searchResult(result),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (snapshot.hasError) {
                return const Center(
                  child: Text("Error loading data"),
                );
              } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                return const Center(
                  child: Text("No data found"),
                );
              } else {
                return GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    childAspectRatio: 1 / 1.5,
                  ),
                  itemBuilder: (context, index) {
                    var data = snapshot.data![index];
                    return MainCard(
                      movie: data,
                    );
                  },
                  itemCount: snapshot.data!.length,
                );
              }
            },
          ))
      ],
    );
  }
}


