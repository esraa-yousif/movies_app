import 'package:flutter/material.dart';
import 'package:movies_app/core/utils/theme_app.dart';
import 'package:movies_app/core/widgets/image_holder.dart';

class NoMoviesFound extends StatelessWidget {
  const NoMoviesFound({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        const ImageHolder('assets/movie.png'),
        const SizedBox(
          height: 12,
        ),
        Text(
          'No movies found',
          style: AppTextStyles.interRegular13,
        ),
        const Spacer(),
      ],
    );
  }
}
