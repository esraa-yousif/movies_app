import 'package:flutter/material.dart';
import 'package:movies_app/core/utils/theme_app.dart';

class HorizontalListViewHolder extends StatelessWidget {
  const HorizontalListViewHolder({
    super.key,
    required this.children,
    required this.title,
  });
  final List<Widget> children;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 16,
        bottom: 12,
      ),
      color: AppColors.charcoalGray,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              title,
              style: AppTextStyles.interRegular15,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: children),
          ),
        ],
      ),
    );
  }
}
