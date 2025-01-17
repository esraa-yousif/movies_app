part of 'search_cubit.dart';

abstract class SearchState {}

final class SearchInitial extends SearchState {}

final class SearchLoading extends SearchState {}

final class SearchSuccess extends SearchState {
  final List<MovieModel> searchMovies;

  SearchSuccess({required this.searchMovies});
}

final class SearchError extends SearchState {}
