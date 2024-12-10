import 'package:flutter/material.dart';
import 'package:movies_app/core/models/movie_model.dart';
import 'package:movies_app/core/widgets/movie_item.dart';

class SearchResults extends StatelessWidget {
  const SearchResults({
    super.key,
    required this.movieModels,
  });

  final List<MovieModel> movieModels;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 28,
      ),
      child: ListView.builder(
        itemBuilder: (context, index) => MovieItem(
          movieModel: movieModels[index],
        ),
        itemCount: movieModels.length,
      ),
    );
  }
}
