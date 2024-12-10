import 'package:flutter/material.dart';
import 'package:movies_app/core/models/movie_model.dart';
import 'package:movies_app/features/search/presentation/views/widgets/no_movies_found.dart';
import 'package:movies_app/features/search/presentation/views/widgets/search_item.dart';
import 'package:movies_app/features/search/presentation/views/widgets/search_results.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  static const List<MovieModel> movieModels = [
    MovieModel(
      name: 'Alita Battle Angel',
      date: '2019',
      image: 'assets/movie_item.png',
      rate: 0,
      description: '',
      video: '',
      cast: 'Rosa Salazar, Christoph Waltz',
      movieCategories: [
        'Action',
        'Adventure',
        'Science Fiction',
      ],
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Column(
        children: [
          const SearchItem(),
          Expanded(
            child: Builder(
              builder: (context) {
                if (movieModels.isNotEmpty) {
                  return const SearchResults(movieModels: movieModels);
                } else {
                  return const NoMoviesFound();
                }
              },
            ),
          )
        ],
      ),
    );
  }
}
