

import 'package:dio/dio.dart';
import 'package:movies/data/model/movie.dart';


// class MoviesApi {
//   late final Dio dio;
//   static String upcomingMoviesURL =
//       '/discover/movie?page=5&api_key=$apiKey';
//  MoviesApi(){
//     BaseOptions options = BaseOptions(
//       baseUrl:baseURL,
//       receiveDataWhenStatusError: true,
//       connectTimeout: 20 * 1000,
//       receiveTimeout: 20 * 1000,
//     );
// dio =Dio(options);
//   }
//   Future<List<dynamic>> getAllMovies() async {
//     try {
//       Response response = await dio.get('characters');
//       print(response.data.toString());
//       return response.data;
//     } catch (e) {
//       print(e.toString());
//       return [];
//     }
//
//   }
//
// }

class MoviesApi {
  static String baseURL = 'https://api.themoviedb.org/3';
  static String apiKey = 'c5850ed73901b8d268d0898a8a9d8bff';
  static String defaultConfiguration = 'language=en-US';
  static String upcomingMoviesURL =
      '$baseURL/movie/upcoming?api_key=$apiKey&$defaultConfiguration&page=5';

  Future<List<Results>?> getAllMovies() async {
    Response response = await Dio().get(upcomingMoviesURL);
    return MoviesModel.fromJson(response.data).results;
  }

}
