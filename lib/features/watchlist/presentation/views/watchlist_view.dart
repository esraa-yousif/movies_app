import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/core/models/movie_model.dart';
import 'package:movies_app/core/utils/theme_app.dart';
import 'package:movies_app/features/watchlist/presentation/view_model/watchlist_cubit/watchlist_cubit.dart';
import 'package:movies_app/features/watchlist/presentation/views/widgets/no_watch_list_movies.dart';
import 'package:movies_app/features/watchlist/presentation/views/widgets/watch_list_view_builder.dart';

class WatchlistView extends StatelessWidget {
  const WatchlistView({super.key});

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
            child: BlocBuilder<WatchlistCubit, WatchlistState>(
                builder: (context, state) {
              final List<MovieModel> movieModels =
                  context.read<WatchlistCubit>().watchListMovies;
              if (movieModels.isEmpty) {
                return const Center(child: NoWatchListMovies());
              } else {
                return WatchListViewBuilder(movieModels: movieModels);
              }
            }),
          ),
        ],
      ),
    );
  }
}
