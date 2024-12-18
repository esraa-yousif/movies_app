import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/core/models/movie_model.dart';
import 'package:movies_app/core/services/database_service.dart';
import 'package:movies_app/core/services/get_it_service.dart';
import 'package:movies_app/core/utils/constants.dart';

part 'more_like_this_state.dart';

class MoreLikeThisCubit extends Cubit<MoreLikeThisState> {
  MoreLikeThisCubit() : super(MoreLikeThisInitial());
  DatabaseService databaseService = getIt<DatabaseService>();
  Future getSimilarMovies(int movieID) async {
    try {
      emit(MoreLikeThisLoading());
      List<MovieModel> similarMovies =
          await databaseService.getSimilar(apiKey: apiKey, movieID: movieID);
      emit(MoreLikeThisSuccess(similarMovies: similarMovies));
    } catch (e) {
      emit(MoreLikeThisError());
    }
  }
}
