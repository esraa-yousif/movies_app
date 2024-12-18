import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/core/utils/constants.dart';
import 'package:movies_app/core/widgets/error_widget.dart';
import 'package:movies_app/features/home/presentation/view_model/popular_cubit/popular_movies_cubit.dart';
import 'package:movies_app/features/home/presentation/views/widgets/home_header.dart';
import 'package:skeletonizer/skeletonizer.dart';

class HomeHeaderBlocBuilder extends StatelessWidget {
  const HomeHeaderBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PopularMoviesCubit, PopularMoviesState>(
      builder: (context, state) {
        if (state is PopularMoviesSuccess) {
          return HomeHeader(
            movieModel: state.movieModel,
          );
        } else if (state is PopularMoviesError) {
          return const MoviesErrorWidget();
        } else {
          return Skeletonizer(
            enabled: true,
            child: HomeHeader(
              movieModel: fakeMovieModelList[0],
            ),
          );
        }
      },
    );
  }
}
