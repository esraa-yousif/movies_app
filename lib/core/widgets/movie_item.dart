import 'package:flutter/material.dart';
import 'package:movies_app/core/models/movie_model.dart';
import 'package:movies_app/core/utils/size_config.dart';
import 'package:movies_app/core/utils/theme_app.dart';
import 'package:movies_app/core/widgets/image_holder.dart';
import 'package:movies_app/features/movie_details/presentation/views/movie_details_view.dart';

class MovieItem extends StatelessWidget {
  const MovieItem({
    super.key,
    required this.movieModel,
  });
  final MovieModel movieModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, MovieDetailsView.routeName,
            arguments: movieModel);
      },
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: ImageHolder(
                    movieModel.image,
                    width: SizeConfig.getMovieItemSize().width,
                    height: SizeConfig.getMovieItemSize().height,
                  ),
                ),
                const SizedBox(width: 12),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      movieModel.name,
                      style: AppTextStyles.interRegular15,
                    ),
                    Text(
                      movieModel.date,
                      style: AppTextStyles.interRegular13,
                    ),
                    Text(
                      movieModel.cast,
                      style: AppTextStyles.interRegular13,
                    )
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          const Divider(color: AppColors.gray70, thickness: 1),
        ],
      ),
    );
  }
}
