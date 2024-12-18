import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/core/utils/constants.dart';
import 'package:movies_app/core/widgets/error_widget.dart';
import 'package:movies_app/core/widgets/horizontal_list_view_holder.dart';
import 'package:movies_app/core/widgets/movie_poster.dart';
import 'package:movies_app/features/movie_details/presentation/view_model/movie_details_cubit/more_like_this_cubit.dart';
import 'package:skeletonizer/skeletonizer.dart';

class MoreLikeThisListBlocBuilder extends StatelessWidget {
  const MoreLikeThisListBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MoreLikeThisCubit, MoreLikeThisState>(
      builder: (context, state) {
        if (state is MoreLikeThisSuccess) {
          return HorizontalListViewHolder(
            title: 'More Like This',
            children: List.generate(
              state.similarMovies.length,
              (index) {
                return Padding(
                  padding: EdgeInsets.only(
                      left: index == 0 ? 20 : 0, right: index == 4 ? 20 : 14),
                  child: MoviePoster(
                    movieModel: state.similarMovies[index],
                  ),
                );
              },
            ),
          );
        } else if (state is MoreLikeThisError) {
          return const MoviesErrorWidget();
        } else {
          return HorizontalListViewHolder(
            title: 'More Like This',
            children: List.generate(
              fakeMovieModelList.length,
              (index) {
                return Padding(
                  padding: EdgeInsets.only(
                      left: index == 0 ? 20 : 0, right: index == 4 ? 20 : 14),
                  child: Skeletonizer(
                    enabled: true,
                    child: MoviePoster(
                      movieModel: fakeMovieModelList[index],
                    ),
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
