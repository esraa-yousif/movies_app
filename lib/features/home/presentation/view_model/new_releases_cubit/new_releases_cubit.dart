import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/core/models/movie_model.dart';
import 'package:movies_app/core/services/database_service.dart';
import 'package:movies_app/core/services/get_it_service.dart';
import 'package:movies_app/core/utils/constants.dart';

part 'new_releases_state.dart';

class NewReleasesCubit extends Cubit<NewReleasesState> {
  NewReleasesCubit() : super(NewReleasesInitial());
  DatabaseService databaseService = getIt<DatabaseService>();
  Future<void> getNewReleases() async {
    emit(NewReleasesLoading());
    try {
      final List<MovieModel> upComingMovies =
          await databaseService.getUpcoming(apiKey: apiKey);
      emit(NewReleasesSuccess(upcomingMovies: upComingMovies));
    } catch (e) {
      emit(NewReleasesError());
    }
  }
}
