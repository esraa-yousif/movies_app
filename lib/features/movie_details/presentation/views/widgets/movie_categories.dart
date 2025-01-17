import 'package:flutter/material.dart';
import 'package:movies_app/core/models/movie_model.dart';
import 'package:movies_app/core/utils/constants.dart';
import 'package:movies_app/core/utils/theme_app.dart';

class MovieCategories extends StatelessWidget {
  const MovieCategories({
    super.key,
    required this.movieModel,
  });

  final MovieModel movieModel;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: movieModel.genreIds.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 2.6,
        crossAxisSpacing: 8,
        mainAxisSpacing: 4,
      ),
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: AppColors.mediumGray,
            ),
            borderRadius: BorderRadius.circular(4),
          ),
          child: Center(
            child: FittedBox(
              child: Text(
                movieModel.genreIds
                    .map((id) => categories
                        .firstWhere((genre) => genre['id'] == id)['name'])
                    .toList()[index],
                style: AppTextStyles.interRegular10,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            ),
          ),
        );
      },
    );
  }
}
