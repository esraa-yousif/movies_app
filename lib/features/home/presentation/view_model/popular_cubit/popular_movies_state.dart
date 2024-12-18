part of 'popular_movies_cubit.dart';

abstract class PopularMoviesState {}

final class PopularMoviesInitial extends PopularMoviesState {}

final class PopularMoviesLoading extends PopularMoviesState {}

final class PopularMoviesSuccess extends PopularMoviesState {
  final MovieModel movieModel;

  PopularMoviesSuccess({required this.movieModel});
}

final class PopularMoviesError extends PopularMoviesState {}
