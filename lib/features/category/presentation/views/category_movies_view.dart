import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:movies_app/core/utils/theme_app.dart';
import 'package:movies_app/features/category/data/models/category_model.dart';
import 'package:movies_app/features/category/presentation/views/widgets/category_movies_body_bloc_builder.dart';

class CategoryMoviesView extends StatelessWidget {
  const CategoryMoviesView({
    super.key,
    required this.categoryModel,
  });
  static const String routeName = 'category-movies';
  final CategoryModel categoryModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryModel.name),
        centerTitle: true,
        backgroundColor: AppColors.darkCharcoal,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: AppColors.darkSilver,
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.only(
          left: 16,
          right: 16,
          top: 20,
          bottom: 16,
        ),
        child: CategoryMoviesBodyBlocBuilder(),
      ),
    );
  }
}
