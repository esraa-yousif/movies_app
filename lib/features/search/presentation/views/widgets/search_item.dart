import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movies_app/core/utils/theme_app.dart';

class SearchItem extends StatelessWidget {
  const SearchItem({super.key, required this.onChanged});
  final void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: SearchBar(
        onChanged: onChanged,
        backgroundColor: const WidgetStatePropertyAll(AppColors.mediumGray),
        padding: const WidgetStatePropertyAll(
          EdgeInsets.symmetric(
            horizontal: 16,
          ),
        ),
        hintText: 'Search',
        hintStyle: WidgetStatePropertyAll(
          AppTextStyles.interRegular14,
        ),
        leading: const Icon(
          FontAwesomeIcons.magnifyingGlass,
          size: 16,
        ),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            side: const BorderSide(
              color: Colors.white,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(80),
          ),
        ),
      ),
    );
  }
}
