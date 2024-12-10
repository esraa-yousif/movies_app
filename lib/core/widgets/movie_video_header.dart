import 'package:flutter/material.dart';
import 'package:movies_app/core/models/movie_model.dart';
import 'package:movies_app/core/utils/size_config.dart';
import 'package:movies_app/core/widgets/image_holder.dart';

class MovieVideoHeader extends StatelessWidget {
  const MovieVideoHeader({
    super.key,
    required this.movieModel,
  });

  final MovieModel movieModel;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        ImageHolder(
          movieModel.video,
          width: SizeConfig.getHeaderSize().width,
          height: SizeConfig.getHeaderSize().height,
        ),
        const ImageHolder(
          'assets/play_button.png',
        ),
      ],
    );
  }
}
