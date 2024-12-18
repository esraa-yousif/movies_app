import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/features/search/presentation/view_model/search_cubit/search_cubit.dart';
import 'package:movies_app/features/search/presentation/views/widgets/search_item.dart';
import 'package:movies_app/features/search/presentation/views/widgets/search_view_body_bloc_builder.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 16,
      ),
      child: Column(
        children: [
          SearchItem(
            onChanged: (value) {
              context.read<SearchCubit>().searchMovies(value);
            },
          ),
          const Expanded(
            child: SearchViewBodyBlocBuilder(),
          )
        ],
      ),
    );
  }
}
