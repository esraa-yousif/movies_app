import 'package:flutter/material.dart';
import 'package:movies_app/core/models/movie_model.dart';
import 'package:movies_app/core/widgets/image_holder.dart';
import 'package:movies_app/core/widgets/movie_item.dart';

class WatchListViewBuilder extends StatelessWidget {
  const WatchListViewBuilder({
    super.key,
    required this.movieModels,
  });

  final List<MovieModel> movieModels;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: ListView.builder(
          itemCount: movieModels.length,
          itemBuilder: (context, index) {
            return Stack(
              children: [
                MovieItem(
                  movieModel: movieModels[index],
                ),
                const Positioned(
                  left: 8,
                  child: ImageHolder(
                    'assets/bookmarked.png',
                  ),
                ),
              ],
            );
          }),
    );
  }
}
