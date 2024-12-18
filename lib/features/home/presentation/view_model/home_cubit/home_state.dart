part of 'home_cubit.dart';

abstract class HomeState {}

final class HomeInitial extends HomeState {}

final class ChangeIndexState extends HomeState {}

final class HomeSuccessState extends HomeState {
  final List<MovieModel>? popularMovies, upcomingMovies, topRatedMovies;
  HomeSuccessState({
    this.popularMovies,
    this.upcomingMovies,
    this.topRatedMovies,
  });
}

final class HomeErrorState extends HomeState {}

final class HomeHeaderUpdated extends HomeState {}
