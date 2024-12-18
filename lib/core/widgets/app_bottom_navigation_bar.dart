import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/core/utils/theme_app.dart';
import 'package:movies_app/features/home/presentation/view_model/home_cubit/home_cubit.dart';

class AppBottomNavigationBar extends StatelessWidget {
  const AppBottomNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return BottomNavigationBar(
          currentIndex: context.read<HomeCubit>().currentIndex,
          onTap: (index) {
            context.read<HomeCubit>().changeIndex(index);
          },
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: true,
          unselectedItemColor: AppColors.lightGray,
          selectedItemColor: AppColors.amber,
          backgroundColor: AppColors.darkBlack,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.movie),
              label: 'Browse',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.collections_bookmark),
              label: 'Watchlist',
            ),
          ],
        );
      },
    );
  }
}
