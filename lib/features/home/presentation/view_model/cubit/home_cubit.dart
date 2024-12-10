import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/features/category/presentation/views/category_view.dart';
import 'package:movies_app/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:movies_app/features/search/presentation/views/search_view.dart';
import 'package:movies_app/features/watchlist/presentation/views/watchlist_view.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  int currentIndex = 0;
  List<Widget> screens = [
    const HomeViewBody(),
    const SearchView(),
    const CategoryView(),
    const WatchlistView(),
  ];

  void changeIndex(int index) {
    currentIndex = index;
    emit(ChangeIndexState());
  }
}
