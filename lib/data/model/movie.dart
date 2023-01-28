class MoviesModel {
  int? page;
  List<Results>? results;
  int? totalPages;
  int? totalResults;


  MoviesModel.fromJson(Map<String, dynamic> json) {
    page = json['page'];
    if (json['results'] != null) {
      print("999999999999999999999999999");

      json['results'].forEach((v) {
        results = <Results>[];
        results!.add( Results.fromJson(v));
        print(v);
        // print(results!.length);
      });
    }

    totalPages = json['total_pages'];
    totalResults = json['total_results'];
  }

}

class Results {

  bool? adult;
  String? backdropPath;
  List<int>? genreIds;
  int? id;
  String? originalLanguage;
  String? originalTitle;
  String? overview;
  double? popularity;
  String? posterPath;
  String? releaseDate;
  String? title;
  bool? video;
  double? voteAverage;
  int? voteCount;


  Results.fromJson(Map<String, dynamic> json) {
    print("5555555555555");

    adult = json['adult'];
    backdropPath = json['backdrop_path'];
    genreIds = json['genre_ids'].cast<int>();
    id = json['id'];
    originalLanguage = json['original_language'];
    originalTitle = json['original_title'];
    overview = json['overview'];
    popularity = json['popularity'];
    posterPath = json['poster_path'];
    releaseDate = json['release_date'];
    title = json['title'];
    video = json['video'];
    voteAverage = json['vote_average'];
    voteCount = json['vote_count'];
  }

}