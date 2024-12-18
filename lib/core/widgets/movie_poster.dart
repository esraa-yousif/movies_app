import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/core/models/movie_model.dart';
import 'package:movies_app/core/utils/size_config.dart';
import 'package:movies_app/core/widgets/image_holder.dart';
import 'package:movies_app/features/movie_details/presentation/views/movie_details_view.dart';
import 'package:movies_app/features/watchlist/presentation/view_model/watchlist_cubit/watchlist_cubit.dart';

class MoviePoster extends StatelessWidget {
  const MoviePoster({
    super.key,
    required this.movieModel,
    this.isHeader = false,
    this.isSemiRounded = false,
  });
  final MovieModel movieModel;
  final bool isHeader;
  final bool isSemiRounded;
  @override
  Widget build(BuildContext context) {
    bool isBookmarked = context
        .read<WatchlistCubit>()
        .watchListMovies
        .where((movie) => movie.id == movieModel.id)
        .isNotEmpty;
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          MovieDetailsView.routeName,
          arguments: movieModel,
        );
      },
      child: ClipRRect(
        borderRadius: isSemiRounded
            ? const BorderRadius.only(
                topLeft: Radius.circular(4),
                topRight: Radius.circular(4),
              )
            : BorderRadius.circular(4),
        child: Stack(
          children: [
            ImageHolder(
              movieModel.posterPath,
              width: SizeConfig.getMoviePosterSize(isHeader).width,
              height: SizeConfig.getMoviePosterSize(isHeader).height,
            ),
            BlocBuilder<WatchlistCubit, WatchlistState>(
              builder: (context, state) {
                return GestureDetector(
                  onTap: () {
                    isBookmarked = !isBookmarked;
                    if (!isBookmarked) {
                      context
                          .read<WatchlistCubit>()
                          .removeMovieFromWatchlist(movieModel.id);
                    } else {
                      context
                          .read<WatchlistCubit>()
                          .addMovieToWatchlist(movieModel);
                    }
                  },
                  child: ImageHolder(
                    isBookmarked
                        ? 'assets/bookmarked.png'
                        : 'assets/bookmark.png',
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
