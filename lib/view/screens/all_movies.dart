import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies/core/style/my_colors.dart';
import 'package:movies/core/style/my_style.dart';
import 'package:movies/data/model/movie.dart';
import 'package:movies/data/repository/character_reposety.dart';
import 'package:movies/data/web_services/api_character.dart';
import 'package:movies/view/screens/cubit/moviesState.dart';
import 'package:movies/view/widget/movies_item.dart';

import 'cubit/moviesCubit.dart';

class MoviesScreen extends StatefulWidget {
  const MoviesScreen({Key? key}) : super(key: key);

  @override
  State<MoviesScreen> createState() => _MoviesScreenState();
}

class _MoviesScreenState extends State<MoviesScreen> {






 late List<Results> allMovies;
  void initState() {
    super.initState();
    BlocProvider.of<MoviesCubit>(context).getAllMovies();

  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Movies", style: AppStyle.myStyle),
      ),

      body: BlocBuilder<MoviesCubit, MoviesStates>(
        builder: (context, state) {
          if (state is MoviesLoaded ) {
            allMovies = (state).moviesModel;
            print(allMovies.length);
            print("00000000000000000000000000000000000000000");
            return SafeArea(
                child: SingleChildScrollView(
                    child: Column(
                  children: [
                    GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 2 / 3,
                          crossAxisSpacing: 1,
                          mainAxisSpacing: 1,
                        ),
                        shrinkWrap: true,
                        physics: const ClampingScrollPhysics(),
                        padding: EdgeInsets.zero,
                        itemCount:allMovies.length,
                        itemBuilder: (context, index) {
                      print(allMovies[1].posterPath);
                          print("0000000000000000000000");
                          return MoviesItem(
                           movie:allMovies[index],
                          );
                        }),
                  ],
                )),

            );
          } else {
            return const Center(
              child: CircularProgressIndicator(
                color: AppColor.white,
              ),
            );
          }
        },
      ),
    );
  }
}
