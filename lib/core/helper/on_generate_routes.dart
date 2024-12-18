import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/core/models/movie_model.dart';
import 'package:movies_app/features/category/data/models/category_model.dart';
import 'package:movies_app/features/category/presentation/view_model/category_movies/category_movies_cubit.dart';
import 'package:movies_app/features/category/presentation/views/category_movies_view.dart';
import 'package:movies_app/features/home/presentation/views/home_view.dart';
import 'package:movies_app/features/movie_details/presentation/view_model/movie_details_cubit/more_like_this_cubit.dart';
import 'package:movies_app/features/movie_details/presentation/views/movie_details_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case HomeView.routeName:
      return MaterialPageRoute(builder: (_) => const HomeView());
    case MovieDetailsView.routeName:
      MovieModel movieModel = routeSettings.arguments as MovieModel;
      return MaterialPageRoute(
          builder: (_) => BlocProvider(
                create: (context) =>
                    MoreLikeThisCubit()..getSimilarMovies(movieModel.id),
                child: MovieDetailsView(
                  movieModel: movieModel,
                ),
              ));
    case CategoryMoviesView.routeName:
      CategoryModel categoryModel = routeSettings.arguments as CategoryModel;
      return MaterialPageRoute(
        builder: (_) => BlocProvider(
          create: (context) =>
              CategoryMoviesCubit()..getCategoryMovies(categoryModel.id),
          child: CategoryMoviesView(
            categoryModel: categoryModel,
          ),
        ),
      );
    default:
      return MaterialPageRoute(
          builder: (_) => Scaffold(
                body: Center(
                  child: Text('No route defined for ${routeSettings.name}'),
                ),
              ));
  }
}
