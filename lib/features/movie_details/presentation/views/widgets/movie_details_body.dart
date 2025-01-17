import 'package:flutter/material.dart';
import 'package:movies_app/core/models/movie_model.dart';
import 'package:movies_app/core/utils/size_config.dart';
import 'package:movies_app/core/utils/theme_app.dart';
import 'package:movies_app/core/widgets/movie_video_header.dart';
import 'package:movies_app/core/widgets/rate_bar.dart';
import 'package:movies_app/core/widgets/movie_poster.dart';
import 'package:movies_app/features/movie_details/presentation/views/widgets/more_like_this_list_bloc_builder.dart';
import 'package:movies_app/features/movie_details/presentation/views/widgets/movie_categories.dart';

class MovieDetailsBody extends StatelessWidget {
  const MovieDetailsBody({super.key, required this.movieModel});
  final MovieModel movieModel;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: MovieVideoHeader(movieModel: movieModel),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(height: 12),
        ),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          sliver: SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  movieModel.title,
                  style: AppTextStyles.interRegular18,
                ),
                Text(
                  movieModel.releaseDate,
                  style: AppTextStyles.interRegular10,
                ),
                const SizedBox(height: 20),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MoviePoster(
                      movieModel: movieModel,
                      isHeader: true,
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: SizedBox(
                        height: SizeConfig.getMoviePosterSize(true).height,
                        child: Column(
                          children: [
                            MovieCategories(movieModel: movieModel),
                            const Expanded(
                              child: SizedBox(
                                height: 8,
                              ),
                            ),
                            Text(
                              movieModel.overview,
                              style: AppTextStyles.interRegular13,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 5,
                            ),
                            const Expanded(
                              child: SizedBox(
                                height: 8,
                              ),
                            ),
                            RateBar(
                              rate: movieModel.voteAverage.toStringAsFixed(1),
                              starSize: 20,
                            ),
                            const Expanded(
                              child: SizedBox(
                                height: 8,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(height: 16),
        ),
        const SliverToBoxAdapter(
          child: MoreLikeThisListBlocBuilder(),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(height: 16),
        ),
      ],
    );
  }
}
