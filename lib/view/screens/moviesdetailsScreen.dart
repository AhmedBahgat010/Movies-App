import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies/core/style/my_colors.dart';
import 'package:movies/core/style/my_style.dart';

import '../../data/model/movie.dart';

class MoviesDetailsScreen extends StatefulWidget {
  final Results movie;

  const MoviesDetailsScreen({Key? key, required this.movie}) : super(key: key);

  @override
  State<MoviesDetailsScreen> createState() => _MoviesDetailsScreenState();
}

class _MoviesDetailsScreenState extends State<MoviesDetailsScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: widget.movie.backdropPath!.isNotEmpty?SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: AppColor.black,
              expandedHeight: 500.h,
              pinned: true,
              stretch: true,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Text(
                  "${widget.movie.originalTitle}",
                  style: AppStyle.myStyle.apply(fontSizeDelta: -30),
                ),
                background: Image.network(
                  "https://image.tmdb.org/t/p/w500${widget.movie.backdropPath}",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate([
                Container(
                  margin: const EdgeInsets.fromLTRB(14, 14, 14, 0),
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.star_rate_sharp,
                            color: Colors.amberAccent,
                            size: 30,
                          ),
                          Text(
                            "${widget.movie.voteAverage}",
                            style: AppStyle.myStyle.apply(fontSizeDelta: -15),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "${widget.movie.overview}",
                        style: AppStyle.myStyle.apply(fontSizeDelta: -20),
                      )
                    ],
                  ),
                )
              ]),
            )
          ],
        ),
      ):Center(
    child: CircularProgressIndicator(
    color: AppColor.white,
    ),),
    );
  }
}
