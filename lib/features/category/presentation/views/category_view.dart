import 'package:flutter/material.dart';
import 'package:movies_app/core/utils/size_config.dart';
import 'package:movies_app/core/utils/theme_app.dart';
import 'package:movies_app/features/category/data/models/category_model.dart';
import 'package:movies_app/features/category/presentation/views/widgets/category_item.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Browse Category',
            style: AppTextStyles.interRegular22,
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 48,
                  crossAxisSpacing: 36,
                  crossAxisCount: 2,
                  childAspectRatio: SizeConfig.categoryItemAspectRatio,
                ),
                itemBuilder: (context, index) => const CategoryItem(
                  categoryModel: CategoryModel(
                    name: 'Action',
                    image: 'assets/video.png',
                  ),
                ),
                itemCount: 3,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
