
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/model/movie.dart';
import '../../../data/repository/character_reposety.dart';
import 'moviesState.dart';



class MoviesCubit extends Cubit<MoviesStates> {
  final MoviesReposetory moviesReposetory;
   List<Results> myMovies=[] ;

  MoviesCubit(this.moviesReposetory) : super(MoviesInitial());

  // static MoviesCubit? get(context) => BlocProvider.of(context);


  List<Results>? getAllMovies(){
    moviesReposetory.getAllMovies().then((cracter) {
      emit(MoviesLoaded(cracter!));
      myMovies = cracter;
    });
    return myMovies;

}
}
