import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:movies_app/core/models/movie_model.dart';
import 'package:movies_app/core/utils/theme_app.dart';
import 'package:movies_app/features/movie_details/presentation/views/widgets/movie_details_body.dart';

class MovieDetailsView extends StatelessWidget {
  const MovieDetailsView({
    super.key,
    required this.movieModel,
  });
  static const String routeName = 'movie-details';
  final MovieModel movieModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(movieModel.name),
        centerTitle: true,
        backgroundColor: AppColors.darkCharcoal,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: AppColors.darkSilver,
        ),
      ),
      body: MovieDetailsBody(
        movieModel: movieModel,
      ),
    );
  }
}
