import 'package:flutter/material.dart';
import 'package:movies_app/core/models/movie_model.dart';
import 'package:movies_app/features/home/presentation/views/home_view.dart';
import 'package:movies_app/features/movie_details/presentation/views/movie_details_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case HomeView.routeName:
      return MaterialPageRoute(builder: (_) => const HomeView());
    case MovieDetailsView.routeName:
      return MaterialPageRoute(
          builder: (_) => MovieDetailsView(
                movieModel: routeSettings.arguments as MovieModel,
              ));
    default:
      return MaterialPageRoute(
          builder: (_) => Scaffold(
                body: Center(
                  child: Text('No route defined for ${routeSettings.name}'),
                ),
              ));
  }
}
