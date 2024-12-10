import 'package:flutter/material.dart';
import 'package:movies_app/core/utils/theme_app.dart';
import 'package:movies_app/core/widgets/image_holder.dart';
import 'package:movies_app/features/category/data/models/category_model.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.categoryModel});
  final CategoryModel categoryModel;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        ImageHolder(
          categoryModel.image,
        ),
        Text(
          categoryModel.name,
          style: AppTextStyles.poppinsSemiBold14,
        )
      ],
    );
  }
}
