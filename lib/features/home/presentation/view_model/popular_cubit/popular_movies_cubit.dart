import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/core/models/movie_model.dart';
import 'package:movies_app/core/services/database_service.dart';
import 'package:movies_app/core/services/get_it_service.dart';
import 'package:movies_app/core/utils/constants.dart';

part 'popular_movies_state.dart';

class PopularMoviesCubit extends Cubit<PopularMoviesState> {
  PopularMoviesCubit() : super(PopularMoviesInitial());
  DatabaseService databaseService = getIt<DatabaseService>();

  Future<void> getPopularMovies() async {
    try {
      emit(PopularMoviesLoading());
      List<MovieModel> popularMovies =
          await databaseService.getPopular(apiKey: apiKey);
      int i = 0;
      while (i < 6) {
        if (isClosed) break;
        emit(PopularMoviesSuccess(movieModel: popularMovies[i]));
        await Future.delayed(const Duration(seconds: 10));
        i++;
        if (i == 5) i = 0;
      }
    } catch (e) {
      if (!isClosed) {
        emit(PopularMoviesError());
      }
    }
  }
}
