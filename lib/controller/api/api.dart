import 'dart:convert';

import 'package:netflix/core/constatnts.dart';
import 'package:netflix/models/movies.dart';
import 'package:http/http.dart' as http;

class Api{
   static const _trendingUrl = 'https://api.themoviedb.org/3/trending/movie/day?api_key=$apiKey';

   Future<List<Movie>> getTrendingMovies() async{
       final response = await http.get(Uri.parse(_trendingUrl));
       if(response.statusCode == 200){
        final deccodedData = jsonDecode(response.body)['results'] as List;
       }
   }

}