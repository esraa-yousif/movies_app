import 'package:flutter/material.dart';
import 'package:movies_app/core/models/movie_model.dart';
import 'package:movies_app/core/widgets/horizontal_list_view_holder.dart';
import 'package:movies_app/features/home/presentation/views/widgets/home_header.dart';
import 'package:movies_app/features/home/presentation/views/widgets/movie_poster.dart';
import 'package:movies_app/features/home/presentation/views/widgets/movie_poster_with_details.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  static const MovieModel movieModel = MovieModel(
    name: 'Dora and the lost city of gold',
    date: '2019  PG-13  2h 7m',
    image: 'assets/poster2.png',
    video: 'assets/video.png',
    description:
        'Having spent most of her life exploring the jungle, nothing could prepare Dora for her most dangerous adventure yet — high school. ',
    rate: 7.7,
    cast: '',
    movieCategories: [
      'Action',
      'Adventure',
      'Fantasy',
      'Sci-Fi',
    ],
  );
  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: HomeHeader(movieModel: movieModel),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 24,
          ),
        ),
        SliverToBoxAdapter(
          child: HorizontalListViewHolder(
            title: 'New Releases',
            child: MoviePoster(
              movieModel: movieModel,
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 28,
          ),
        ),
        SliverToBoxAdapter(
          child: HorizontalListViewHolder(
            title: 'Recomended',
            child: MoviePosterWithDetails(
              movieModel: movieModel,
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 28,
          ),
        ),
      ],
    );
  }
}
