import 'package:flutter/material.dart';
import 'package:movies_app/core/models/movie_model.dart';
import 'package:movies_app/core/utils/theme_app.dart';
import 'package:movies_app/features/watchlist/presentation/views/widgets/no_watch_list_movies.dart';
import 'package:movies_app/features/watchlist/presentation/views/widgets/watch_list_view_builder.dart';

class WatchlistView extends StatelessWidget {
  const WatchlistView({super.key});
  static const List<MovieModel> movieModels = [
    // MovieModel(
    //   name: 'Alita Battle Angel',
    //   date: '2019',
    //   image: 'assets/movie_item.png',
    //   rate: 0,
    //   description: '',
    //   video: '',
    //   cast: 'Rosa Salazar, Christoph Waltz',
    // )
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Watchlist',
            style: AppTextStyles.interRegular22,
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: Builder(builder: (context) {
              if (movieModels.isEmpty) {
                return const Center(child: NoWatchListMovies());
              } else {
                return const WatchListViewBuilder(movieModels: movieModels);
              }
            }),
          ),
        ],
      ),
    );
  }
}
