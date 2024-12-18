import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/core/models/movie_model.dart';
import 'package:movies_app/core/services/database_service.dart';
import 'package:movies_app/core/services/get_it_service.dart';
import 'package:movies_app/core/utils/constants.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit() : super(SearchInitial());
  DatabaseService databaseService = getIt<DatabaseService>();

  Future searchMovies(String query) async {
    if (query.isNotEmpty && query != ' ') {
      try {
        emit(SearchLoading());
        final searchMovies = await databaseService.getSearchMovieByName(
            apiKey: apiKey, query: query);
        if (searchMovies.isEmpty) {
          emit(SearchInitial());
        } else {
          emit(SearchSuccess(searchMovies: searchMovies));
        }
      } catch (e) {
        emit(SearchError());
      }
    } else {
      emit(SearchInitial());
    }
  }
}
