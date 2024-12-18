part of 'more_like_this_cubit.dart';

abstract class MoreLikeThisState {}

final class MoreLikeThisInitial extends MoreLikeThisState {}

final class MoreLikeThisLoading extends MoreLikeThisState {}

final class MoreLikeThisSuccess extends MoreLikeThisState {
  final List<MovieModel> similarMovies;

  MoreLikeThisSuccess({required this.similarMovies});
}

final class MoreLikeThisError extends MoreLikeThisState {}
