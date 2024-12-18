import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/core/models/movie_model.dart';
import 'package:movies_app/core/services/firebase_service.dart';
import 'package:movies_app/core/services/get_it_service.dart';

part 'watchlist_state.dart';

class WatchlistCubit extends Cubit<WatchlistState> {
  WatchlistCubit() : super(WatchlistInitial());
  FirebaseService firebaseService = getIt<FirebaseService>();
  List<MovieModel> watchListMovies = [];
  Future addMovieToWatchlist(MovieModel movieModel) async {
    await firebaseService.addMovieToWatchList(movieModel);
    await getWatchListMovies();
    emit(AddToWatchList());
  }

  Future removeMovieFromWatchlist(int id) async {
    await firebaseService.removeMovieFromWatchList(id);
    await getWatchListMovies();
    emit(RemoveFromWatchList());
  }

  Future getWatchListMovies() async {
    watchListMovies = await firebaseService.getWatchListMovies();
    emit(WatchListSuccess());
  }
}
