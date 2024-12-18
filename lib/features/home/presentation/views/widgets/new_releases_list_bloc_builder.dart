import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/core/utils/constants.dart';
import 'package:movies_app/core/widgets/error_widget.dart';
import 'package:movies_app/core/widgets/horizontal_list_view_holder.dart';
import 'package:movies_app/features/home/presentation/view_model/new_releases_cubit/new_releases_cubit.dart';
import 'package:movies_app/core/widgets/movie_poster.dart';
import 'package:skeletonizer/skeletonizer.dart';

class NewReleasesListBlocBuilder extends StatelessWidget {
  const NewReleasesListBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewReleasesCubit, NewReleasesState>(
      builder: (context, state) {
        if (state is NewReleasesSuccess) {
          return HorizontalListViewHolder(
            title: 'New Releases',
            children: List.generate(
              state.upcomingMovies.length,
              (index) {
                return Padding(
                  padding: EdgeInsets.only(
                      left: index == 0 ? 20 : 0, right: index == 4 ? 20 : 14),
                  child: MoviePoster(movieModel: state.upcomingMovies[index]),
                );
              },
            ),
          );
        } else if (state is NewReleasesError) {
          return const MoviesErrorWidget();
        } else {
          return HorizontalListViewHolder(
            title: 'New Releases',
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
