part of 'new_releases_cubit.dart';

abstract class NewReleasesState {}

final class NewReleasesInitial extends NewReleasesState {}

final class NewReleasesLoading extends NewReleasesState {}

final class NewReleasesSuccess extends NewReleasesState {
  final List<MovieModel> upcomingMovies;
  NewReleasesSuccess({required this.upcomingMovies});
}

final class NewReleasesError extends NewReleasesState {}
