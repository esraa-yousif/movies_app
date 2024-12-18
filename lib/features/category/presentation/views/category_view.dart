import 'package:flutter/material.dart';
import 'package:movies_app/core/utils/constants.dart';
import 'package:movies_app/core/utils/size_config.dart';
import 'package:movies_app/core/utils/theme_app.dart';
import 'package:movies_app/features/category/data/models/category_model.dart';
import 'package:movies_app/features/category/presentation/views/category_movies_view.dart';
import 'package:movies_app/features/category/presentation/views/widgets/category_item.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
        top: 20,
        bottom: 16,
      ),
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
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      CategoryMoviesView.routeName,
                      arguments: CategoryModel(
                        id: categories[index]['id'],
                        name: categories[index]['name'],
                        image: 'assets/video.png',
                      ),
                    );
                  },
                  child: CategoryItem(
                    categoryModel: CategoryModel(
                      id: categories[index]['id'],
                      name: categories[index]['name'],
                      image: 'assets/video.png',
                    ),
                  ),
                ),
                itemCount: categories.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
