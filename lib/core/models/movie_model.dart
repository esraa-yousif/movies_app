class MovieModel {
  final String title, releaseDate, posterPath, overview, backdropPath;
  final List<dynamic> genreIds;
  final double voteAverage;
  final int id;
  const MovieModel({
    required this.id,
    required this.title,
    required this.releaseDate,
    required this.posterPath,
    required this.voteAverage,
    required this.overview,
    required this.backdropPath,
    required this.genreIds,
  });

  factory MovieModel.fromTMDB(Map<String, dynamic> json) {
    return MovieModel(
      id: json['id'],
      title: json['title'],
      releaseDate: json['release_date'],
      posterPath: 'https://image.tmdb.org/t/p/original${json['poster_path']}',
      voteAverage: json['vote_average'],
      overview: json['overview'],
      backdropPath:
          'https://image.tmdb.org/t/p/original${json['backdrop_path']}',
      genreIds: json['genre_ids'],
    );
  }

  toFirebase() {
    return {
      'id': id,
      'title': title,
      'releaseDate': releaseDate,
      'posterPath': posterPath,
      'voteAverage': voteAverage,
      'overview': overview,
      'backdropPath': backdropPath,
      'genreIds': genreIds,
    };
  }

  factory MovieModel.fromFirebase(Map<String, dynamic> json) {
    return MovieModel(
      id: json['id'],
      title: json['title'],
      releaseDate: json['releaseDate'],
      posterPath: json['posterPath'],
      voteAverage: json['voteAverage'],
      overview: json['overview'],
      backdropPath: json['backdropPath'],
      genreIds: json['genreIds'],
    );
  }
}
