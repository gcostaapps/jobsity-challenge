import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/favorite/favorite_cubit.dart';
import '../../application/favorite/favorite_state.dart';
import '../core/border_size.dart';
import '../core/spacing/spacing.dart';
import '../core/theme/theme.dart';
import 'favorite_item.dart';

class FavoritesHomePage extends StatelessWidget {
  FavoritesHomePage({Key? key}) : super(key: key);

  final ScrollController controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colorScheme.background,
      body: Scrollbar(
        thumbVisibility: true,
        controller: controller,
        radius: const Radius.circular(BorderSize.circular),
        child: SingleChildScrollView(
          controller: controller,
          padding: const EdgeInsets.only(
            bottom: Space.large2,
            left: Space.medium,
            right: Space.medium,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacing.vertical(Space.medium2),
              BlocBuilder<FavoriteCubit, FavoriteState>(
                builder: (context, state) {
                  if (state.isLoading) {
                    return const Center(child: CircularProgressIndicator());
                  }
                  if (state.failure != null) {
                    return Text(
                      'An error ocurred, please contact support',
                      style: context.textTheme.bodyText2,
                      textAlign: TextAlign.center,
                    );
                  }
                  if (state.series.isEmpty) {
                    return Center(
                      child: Column(
                        children: [
                          Spacing.vertical(
                            MediaQuery.of(context).size.height * 0.2,
                          ),
                          Icon(
                            Icons.favorite,
                            color: context.colorScheme.onBackground
                                .withOpacity(0.5),
                            size: 160,
                          ),
                          const Spacing.vertical(Space.medium),
                          Text(
                            'There is no favorite series yet\nTry adding your first one and come back here 😉',
                            style: context.textTheme.bodyText2!.copyWith(
                              color: context.colorScheme.onBackground,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    );
                  }

                  return GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: 240,
                      crossAxisCount: 2,
                      mainAxisSpacing: Space.medium,
                      crossAxisSpacing: Space.medium,
                    ),
                    controller: ScrollController(),
                    itemCount: state.series.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      final item = state.series[index];
                      return FavoriteItem(serie: item);
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
