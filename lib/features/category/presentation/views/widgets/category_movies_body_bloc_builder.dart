import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/core/utils/constants.dart';
import 'package:movies_app/core/widgets/error_widget.dart';
import 'package:movies_app/features/category/presentation/view_model/category_movies/category_movies_cubit.dart';
import 'package:movies_app/features/category/presentation/views/widgets/category_movies_view_body.dart';
import 'package:skeletonizer/skeletonizer.dart';

class CategoryMoviesBodyBlocBuilder extends StatelessWidget {
  const CategoryMoviesBodyBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryMoviesCubit, CategoryMoviesState>(
      builder: (context, state) {
        if (state is CategoryMoviesSuccess) {
          return CategoryMoviesViewBody(
            categoryMovies: state.categoryMovies,
          );
        } else if (state is CategoryMoviesError) {
          return const MoviesErrorWidget();
        } else {
          return Skeletonizer(
            enabled: true,
            child: CategoryMoviesViewBody(
              categoryMovies: fakeMovieModelList,
            ),
          );
        }
      },
    );
  }
}
