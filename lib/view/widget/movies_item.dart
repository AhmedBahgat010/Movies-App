import 'package:flutter/material.dart';
import 'package:movies/core/style/my_colors.dart';
import 'package:movies/data/model/movie.dart';
import 'package:movies/view/screens/moviesdetailsScreen.dart';

import '../../core/resource/navigator.dart';

class MoviesItem extends StatelessWidget {
  // final MoviesModel movie;
  final Results movie;

  const MoviesItem({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
      padding: EdgeInsetsDirectional.all(4),
      decoration: BoxDecoration(
        color: AppColor.green,
        borderRadius: BorderRadius.circular(8),
      ),
      child: InkWell(
        onTap: () {
          navigateTo(
              context,
              MoviesDetailsScreen(
                movie: movie,
              ));
        },
        child: GridTile(
          child: Container(
            color: AppColor.gray,
            child: FadeInImage.assetNetwork(
              width: double.infinity,
              height: double.infinity,
              placeholder: 'assets/images/loading.gif',
              image: "https://image.tmdb.org/t/p/w500${movie.posterPath}",
              fit: BoxFit.cover,
            ),
          ),
          footer: Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            color: Colors.black54,
            alignment: Alignment.bottomCenter,
            child: Column(
              children: [
                Text(
                  " ${movie.originalTitle}",
                  style: const TextStyle(
                    height: 1.3,
                    fontSize: 16,
                    color: AppColor.white,
                    fontWeight: FontWeight.bold,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  textAlign: TextAlign.center,
                ),
                Text(
                  "${movie.releaseDate}",
                  style: const TextStyle(
                    height: 1.3,
                    fontSize: 16,
                    color: AppColor.green,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
