import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/core/models/movie_model.dart';
import 'package:movies_app/core/services/database_service.dart';
import 'package:movies_app/core/services/get_it_service.dart';
import 'package:movies_app/core/utils/constants.dart';

part 'category_movies_state.dart';

class CategoryMoviesCubit extends Cubit<CategoryMoviesState> {
  CategoryMoviesCubit() : super(CategoryMoviesInitial());
  DatabaseService databaseService = getIt<DatabaseService>();

  Future<void> getCategoryMovies(int id) async {
    emit(CategoryMoviesLoading());
    try {
      final categoryMovies = await databaseService.getSearchMovieByCategory(
          apiKey: apiKey, query: id);
      emit(CategoryMoviesSuccess(categoryMovies: categoryMovies));
    } catch (e) {
      emit(CategoryMoviesError());
    }
  }
}
