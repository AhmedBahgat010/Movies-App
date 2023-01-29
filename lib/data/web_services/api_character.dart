

import 'package:dio/dio.dart';
import 'package:movies/data/model/movie.dart';

import '../../core/resource/app_strings.dart';




class MoviesApi {

  Future<List<Results>?> getAllMovies() async {
    Response response = await Dio().get(MoviesURL);
    return MoviesModel.fromJson(response.data).results;
  }

}
