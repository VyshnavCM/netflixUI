import 'dart:convert';

import 'package:netflix/core/constatnts.dart';
import 'package:netflix/models/movies.dart';
import 'package:http/http.dart' as http;

class Api {
  static const _trendingUrl =
      'https://api.themoviedb.org/3/trending/movie/day?api_key=$apiKey';

  Future<List<Movie>> getTrendingMovies() async {
    final response = await http.get(Uri.parse(_trendingUrl));
    if (response.statusCode == 200) {
      final deccodedData = jsonDecode(response.body)['results'] as List;
      return deccodedData.map((movie) => Movie.fromJson(movie)).toList();
    } else {
      throw Exception('Something went wrong');
    }
  }

  static const _popularUrl = 'https://api.themoviedb.org/3/movie/popular?api_key=$apiKey';
   Future<List<Movie>> getPopularMovies() async {
    final response = await http.get(Uri.parse(_popularUrl));
    if (response.statusCode == 200) {
      final deccodedData = jsonDecode(response.body)['results'] as List;
      return deccodedData.map((movie) => Movie.fromJson(movie)).toList();
    } else {
      throw Exception('Something went wrong');
    }
  }



  Future<List<String>> getDownloadImageUrls() async {
    final response = await http.get(Uri.parse(_trendingUrl));
    if (response.statusCode == 200) {
      final responseData = jsonDecode(response.body)["results"] as List;
      return responseData
          .map((movie) => Movie.fromJson(movie).posterPath)
          .toList();
    } else {
      throw Exception('Something went wrong');
    }
  }

  static const _topRatedUrl =
      "https://api.themoviedb.org/3/movie/top_rated?api_key=$apiKey";

  Future<List<Movie>> getTopRated() async {
    final response = await http.get(Uri.parse(_topRatedUrl));
    if (response.statusCode == 200) {
      final responseData = jsonDecode(response.body)["results"] as List;
      return responseData.map((movie) => Movie.fromJson(movie)).toList();
    } else {
      throw Exception('Something went wrong');
    }
  }

  static const _upComing =
      "https://api.themoviedb.org/3/movie/upcoming?api_key=$apiKey";

  Future<List<Movie>> getUpComing() async {
    final response = await http.get(Uri.parse(_upComing));
    if (response.statusCode == 200) {
      final responseData = jsonDecode(response.body)["results"] as List;
      return responseData.map((movie) => Movie.fromJson(movie)).toList();
    } else {
      throw Exception('Something went wrong');
    }
  }

  static const _top10TvShowsInIndiaToday =
      "https://api.themoviedb.org/3/discover/tv?api_key=$apiKey&with_original_language=hi&sort_by=popularity.desc";

  Future<List<Movie>> getTop10TvShowsInIndiaToday() async {
    final response = await http.get(Uri.parse(_top10TvShowsInIndiaToday));
    if (response.statusCode == 200) {
      final responseData = jsonDecode(response.body)["results"] as List;
      return responseData.map((movie) => Movie.fromJson(movie)).toList();
    } else {
      throw Exception('Something went wrong');
    }
  }

  static const _forSearch =
      "https://api.themoviedb.org/3/trending/movie/day?api_key=$apiKey";
  Future<List<Movie>> forSearchDara() async {
    final response = await http.get(Uri.parse(_forSearch));
    if (response.statusCode == 200) {
      final responseData = jsonDecode(response.body)["results"] as List;
      return responseData.map((movie) => Movie.fromJson(movie)).toList();
    } else {
      throw Exception('Something went wrong');
    }
  }

  Future<List<Movie>> searchResult(String movie) async {
    String resultApi =
        "https://api.themoviedb.org/3/search/movie?api_key=$apiKey&query=$movie";
    final response = await http.get(Uri.parse(resultApi));
    if (response.statusCode == 200) {
      final responseData = jsonDecode(response.body)["results"] as List;
      return responseData.map((movie) => Movie.fromJson(movie)).toList();
    } else {
      throw Exception('something went wrong');
    }
  }
}
