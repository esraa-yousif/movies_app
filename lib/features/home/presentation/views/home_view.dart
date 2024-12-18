import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/core/utils/theme_app.dart';
import 'package:movies_app/core/widgets/app_bottom_navigation_bar.dart';
import 'package:movies_app/features/home/presentation/view_model/home_cubit/home_cubit.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const routeName = 'home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkSilver,
      body: SafeArea(child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          return context
              .read<HomeCubit>()
              .screens[context.read<HomeCubit>().currentIndex];
        },
      )),
      bottomNavigationBar: const AppBottomNavigationBar(),
    );
  }
}
