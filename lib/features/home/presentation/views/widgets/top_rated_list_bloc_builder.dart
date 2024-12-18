import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/core/utils/constants.dart';
import 'package:movies_app/core/widgets/error_widget.dart';
import 'package:movies_app/core/widgets/horizontal_list_view_holder.dart';
import 'package:movies_app/features/home/presentation/view_model/top_rated_cubit/top_rated_cubit.dart';
import 'package:movies_app/features/home/presentation/views/widgets/movie_poster_with_details.dart';
import 'package:skeletonizer/skeletonizer.dart';

class TopRatedListBlocBuilder extends StatelessWidget {
  const TopRatedListBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TopRatedCubit, TopRatedState>(
      builder: (context, state) {
        if (state is TopRatedSuccess) {
          return HorizontalListViewHolder(
            title: 'Recomended',
            children: List.generate(
              state.topRatedMovies.length,
              (index) {
                return Padding(
                  padding: EdgeInsets.only(
                      left: index == 0 ? 20 : 0, right: index == 4 ? 20 : 14),
                  child: MoviePosterWithDetails(
                      movieModel: state.topRatedMovies[index]),
                );
              },
            ),
          );
        } else if (state is TopRatedError) {
          return const MoviesErrorWidget();
        } else {
          return HorizontalListViewHolder(
            title: 'Recomended',
            children: List.generate(
              fakeMovieModelList.length,
              (index) {
                return Padding(
                  padding: EdgeInsets.only(
                      left: index == 0 ? 20 : 0, right: index == 4 ? 20 : 14),
                  child: Skeletonizer(
                    enabled: true,
                    child: MoviePosterWithDetails(
                        movieModel: fakeMovieModelList[index]),
                  ),
                );
              },
            ),
          );
        }
      },
    );
  }
}
