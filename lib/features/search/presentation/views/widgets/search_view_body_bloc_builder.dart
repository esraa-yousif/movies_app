import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/core/utils/theme_app.dart';
import 'package:movies_app/core/widgets/error_widget.dart';
import 'package:movies_app/features/search/presentation/view_model/search_cubit/search_cubit.dart';
import 'package:movies_app/features/search/presentation/views/widgets/no_movies_found.dart';
import 'package:movies_app/features/search/presentation/views/widgets/search_results.dart';

class SearchViewBodyBlocBuilder extends StatelessWidget {
  const SearchViewBodyBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if (state is SearchSuccess) {
          return SearchResults(movieModels: state.searchMovies);
        } else if (state is SearchError) {
          return const MoviesErrorWidget();
        } else if (state is SearchLoading) {
          return const Center(
            child: CircularProgressIndicator(
              color: AppColors.amber,
            ),
          );
        } else {
          return const NoMoviesFound();
        }
      },
    );
  }
}
