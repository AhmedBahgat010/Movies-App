
import '../../../data/model/movie.dart';

abstract class MoviesStates {}

class MoviesInitial extends MoviesStates {}
class MoviesLoaded extends MoviesStates {
  final List<Results> moviesModel;

  MoviesLoaded(this.moviesModel);
}