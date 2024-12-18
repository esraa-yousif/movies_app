part of 'top_rated_cubit.dart';

abstract class TopRatedState {}

final class TopRatedInitial extends TopRatedState {}

final class TopRatedSuccess extends TopRatedState {
  final List<MovieModel> topRatedMovies;
  TopRatedSuccess({required this.topRatedMovies});
}

final class TopRatedError extends TopRatedState {}

final class TopRatedLoading extends TopRatedState {}
