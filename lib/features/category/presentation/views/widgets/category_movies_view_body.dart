import 'package:flutter/material.dart';
import 'package:movies_app/core/models/movie_model.dart';
import 'package:movies_app/core/widgets/movie_item.dart';

class CategoryMoviesViewBody extends StatelessWidget {
  const CategoryMoviesViewBody({
    super.key,
    required this.categoryMovies,
  });

  final List<MovieModel> categoryMovies;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => MovieItem(
        movieModel: categoryMovies[index],
      ),
      itemCount: categoryMovies.length,
    );
  }
}
