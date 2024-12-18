import 'package:movies_app/core/models/movie_model.dart';

abstract class DatabaseService {
  Future<List<MovieModel>> getPopular({required String apiKey});
  Future<List<MovieModel>> getUpcoming({required String apiKey});
  Future<List<MovieModel>> getTopRated({required String apiKey});
  Future<List<MovieModel>> getSimilar(
      {required String apiKey, required int movieID});
  Future<MovieModel> getMovieDetials(
      {required String apiKey, required int movieID});
  Future<List<MovieModel>> getSearchMovieByName(
      {required String apiKey, required String query});
  Future<List<MovieModel>> getSearchMovieByCategory(
      {required String apiKey, required int query});
}
