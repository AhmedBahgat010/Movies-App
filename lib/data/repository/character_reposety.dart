import '../model/movie.dart';
import '../web_services/api_character.dart';

class MoviesReposetory{
  late final MoviesApi moviesApi;
  MoviesReposetory(this.moviesApi);
  Future<List<Results>?> getAllMovies()async {

return await moviesApi.getAllMovies();

  }
}