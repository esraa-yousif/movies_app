part of 'category_movies_cubit.dart';

abstract class CategoryMoviesState {}

final class CategoryMoviesInitial extends CategoryMoviesState {}

final class CategoryMoviesSuccess extends CategoryMoviesState {
  final List<MovieModel> categoryMovies;
  CategoryMoviesSuccess({required this.categoryMovies});
}

final class CategoryMoviesError extends CategoryMoviesState {}

final class CategoryMoviesLoading extends CategoryMoviesState {}
