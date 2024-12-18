import 'package:flutter/material.dart';
import 'package:movies_app/core/models/movie_model.dart';
import 'package:movies_app/core/utils/size_config.dart';
import 'package:movies_app/core/utils/theme_app.dart';
import 'package:movies_app/core/widgets/rate_bar.dart';
import 'package:movies_app/core/widgets/movie_poster.dart';
import 'package:movies_app/features/movie_details/presentation/views/movie_details_view.dart';

class MoviePosterWithDetails extends StatelessWidget {
  const MoviePosterWithDetails({super.key, required this.movieModel});
  final MovieModel movieModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          MovieDetailsView.routeName,
          arguments: movieModel,
        );
      },
      child: Material(
        elevation: 8,
        borderRadius: BorderRadius.circular(4),
        color: AppColors.darkGray,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MoviePoster(
              isSemiRounded: true,
              movieModel: movieModel,
            ),
            SizedBox(
              width: SizeConfig.getMoviePosterSize(false).width,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 6,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 6),
                    RateBar(
                      rate: movieModel.voteAverage.toStringAsFixed(1),
                      starSize: 10,
                    ),
                    const SizedBox(height: 2),
                    Text(
                      movieModel.title,
                      style: AppTextStyles.poppinsRegular10,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                    const SizedBox(height: 2),
                    Text(
                      movieModel.releaseDate,
                      style: AppTextStyles.interRegular8,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
