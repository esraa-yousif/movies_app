import 'package:flutter/material.dart';
import 'package:movies_app/core/models/movie_model.dart';
import 'package:movies_app/core/utils/size_config.dart';

class SearchedMoviesItem extends StatelessWidget {
  const SearchedMoviesItem({
    super.key,
    required this.movieModel,
  });
  final MovieModel movieModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          movieModel.posterPath,
          width: SizeConfig.getMovieItemSize().width,
          height: SizeConfig.getMovieItemSize().height,
          fit: BoxFit.fill,
        ),
        const SizedBox(
          width: 12,
        ),
      ],
    );
  }
}
