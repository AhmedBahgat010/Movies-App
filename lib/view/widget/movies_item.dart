import 'package:flutter/material.dart';
import 'package:movies/core/style/my_colors.dart';
import 'package:movies/data/model/movie.dart';

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
        color: AppColor.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child:  InkWell(
        onTap: () {
          // Navigator.pushNamed(context, characterDetailsScreen ,arguments: character );
        },
        child: GridTile(
          child: Container(
            color: AppColor.gray,
            child: Image.network(
                    "https://image.tmdb.org/t/p/w500${movie.backdropPath}"),
//             child: FadeInImage.assetNetwork(
//               width: double.infinity,
//               height: double.infinity,
//               placeholder: 'assets/images/loading.gif',
// image: "https://image.tmdb.org/t/p/w500/c6BEspznv2528qaOGzvqtpktn1J.jpg",
//               fit: BoxFit.cover,
//             ),
          ),
          footer: Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            color: Colors.black54,
            alignment: Alignment.bottomCenter,
            child: Column(
              children: [
                Text(
                  "character.name",
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
                Icon(
                  Icons.star_rate_sharp,
                  color: Colors.amberAccent,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
