import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/core/helper/on_generate_routes.dart';
import 'package:movies_app/core/utils/size_config.dart';
import 'package:movies_app/core/utils/theme_app.dart';
import 'package:movies_app/features/home/presentation/view_model/cubit/home_cubit.dart';
import 'package:movies_app/features/home/presentation/views/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: AppColors.darkSilver));
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: MaterialApp(
        theme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        onGenerateRoute: onGenerateRoute,
        initialRoute: HomeView.routeName,
      ),
    );
  }
}