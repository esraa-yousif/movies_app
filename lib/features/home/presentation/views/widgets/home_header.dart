import 'package:flutter/material.dart';
import 'package:movies_app/core/models/movie_model.dart';
import 'package:movies_app/core/utils/size_config.dart';
import 'package:movies_app/core/utils/theme_app.dart';
import 'package:movies_app/core/widgets/movie_video_header.dart';
import 'package:movies_app/features/home/presentation/views/widgets/movie_poster.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
    required this.movieModel,
  });
  final MovieModel movieModel;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        Padding(
          padding: EdgeInsets.only(
            bottom: SizeConfig.getHeaderBottomPadding(),
          ),
          child: MovieVideoHeader(
            movieModel: movieModel,
          ),
        ),
        Positioned(
          left: 20,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              MoviePoster(
                isHeader: true,
                movieModel: movieModel,
              ),
              const SizedBox(
                width: 12,
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    movieModel.name,
                    style: AppTextStyles.interRegular14,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    movieModel.date,
                    style: AppTextStyles.interRegular10,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
