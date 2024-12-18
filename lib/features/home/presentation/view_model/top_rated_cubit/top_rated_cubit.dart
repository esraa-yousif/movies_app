import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/core/models/movie_model.dart';
import 'package:movies_app/core/services/database_service.dart';
import 'package:movies_app/core/services/get_it_service.dart';
import 'package:movies_app/core/utils/constants.dart';

part 'top_rated_state.dart';

class TopRatedCubit extends Cubit<TopRatedState> {
  TopRatedCubit() : super(TopRatedInitial());
  DatabaseService databaseService = getIt<DatabaseService>();

  Future<void> getTopRatedMovies() async {
    emit(TopRatedLoading());
    try {
      final List<MovieModel> topRatedMovies =
          await databaseService.getTopRated(apiKey: apiKey);
      emit(TopRatedSuccess(topRatedMovies: topRatedMovies));
    } catch (e) {
      emit(TopRatedError());
    }
  }
}
