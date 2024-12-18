import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/features/home/presentation/view_model/new_releases_cubit/new_releases_cubit.dart';
import 'package:movies_app/features/home/presentation/view_model/popular_cubit/popular_movies_cubit.dart';
import 'package:movies_app/features/home/presentation/view_model/top_rated_cubit/top_rated_cubit.dart';
import 'package:movies_app/features/home/presentation/views/widgets/home_header_bloc_builder.dart';
import 'package:movies_app/features/home/presentation/views/widgets/new_releases_list_bloc_builder.dart';
import 'package:movies_app/features/home/presentation/views/widgets/top_rated_list_bloc_builder.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: BlocProvider(
            create: (context) => PopularMoviesCubit()..getPopularMovies(),
            child: const HomeHeaderBlocBuilder(),
          ),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 24,
          ),
        ),
        SliverToBoxAdapter(
          child: BlocProvider(
            create: (context) => NewReleasesCubit()..getNewReleases(),
            child: const NewReleasesListBlocBuilder(),
          ),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 28,
          ),
        ),
        SliverToBoxAdapter(
          child: BlocProvider(
            create: (context) => TopRatedCubit()..getTopRatedMovies(),
            child: const TopRatedListBlocBuilder(),
          ),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 28,
          ),
        ),
      ],
    );
  }
}
