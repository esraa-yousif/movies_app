class MovieModel {
  final String name, date, image, description, video, cast;
  final List<String> movieCategories;
  final double rate;
  const MovieModel(
      {required this.name,
      required this.date,
      required this.image,
      required this.rate,
      required this.description,
      required this.video,
      required this.cast,
      required this.movieCategories});
}
