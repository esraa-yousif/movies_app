import 'package:flutter/material.dart';
import 'package:movies_app/core/models/movie_model.dart';
import 'package:movies_app/core/utils/size_config.dart';
import 'package:movies_app/core/widgets/image_holder.dart';
import 'package:movies_app/features/movie_details/presentation/views/movie_details_view.dart';

class MoviePoster extends StatefulWidget {
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
  State<MoviePoster> createState() => _MoviePosterState();
}

class _MoviePosterState extends State<MoviePoster> {
  bool isBookmarked = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          MovieDetailsView.routeName,
          arguments: widget.movieModel,
        );
      },
      child: ClipRRect(
        borderRadius: widget.isSemiRounded
            ? const BorderRadius.only(
                topLeft: Radius.circular(4),
                topRight: Radius.circular(4),
              )
            : BorderRadius.circular(4),
        child: Stack(
          children: [
            ImageHolder(
              widget.movieModel.image,
              width: SizeConfig.getMoviePosterSize(widget.isHeader).width,
              height: SizeConfig.getMoviePosterSize(widget.isHeader).height,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isBookmarked = !isBookmarked;
                });
              },
              child: ImageHolder(
                isBookmarked ? 'assets/bookmarked.png' : 'assets/bookmark.png',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
