import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/people/person_detail/person_detail_cubit.dart';
import '../../../application/people/person_detail/person_detail_state.dart';
import '../../../domain/serie/serie_model.dart';
import '../../core/page_routes/shared_axis_page_route.dart';
import '../../core/spacing/spacing.dart';
import '../../core/theme/theme.dart';
import '../../core/widgets/poster_item/poster_item.dart';
import '../../series/detail/serie_detail_page.dart';

class PersonDetailInfo extends StatelessWidget {
  const PersonDetailInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PersonDetailCubit, PersonDetailState>(
      builder: (context, state) {
        final hasError = state.failure != null;
        List<SerieModel> series = [];
        if (!state.isLoadingSeries && state.person!.series.isNotEmpty) {
          series = state.person!.series;
        }

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(left: Space.medium),
                child: Text(
                  'Movies and TV shows',
                  overflow: TextOverflow.ellipsis,
                  style: context.textTheme.subtitle1!
                      .copyWith(color: context.colorScheme.onSurface),
                ),
              ),
            ),
            const Spacing.vertical(Space.small),
            if (state.isLoadingSeries)
              const Center(child: CircularProgressIndicator()),
            if (hasError)
              Padding(
                padding: const EdgeInsets.only(left: Space.medium),
                child: Text(
                  'Error loading series, please check your internet connection',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  style: context.textTheme.subtitle2!.copyWith(
                    color: context.colorScheme.error,
                  ),
                ),
              ),
            if (!state.isLoadingSeries && state.person!.series.isEmpty)
              Padding(
                padding: const EdgeInsets.only(left: Space.medium),
                child: Text(
                  'This person has no movies or TV shows',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  style: context.textTheme.subtitle2!.copyWith(
                    color: context.colorScheme.onBackground,
                  ),
                ),
              ),
            if (series.isNotEmpty)
              SizedBox(
                height: 220,
                child: ListView.builder(
                  padding: const EdgeInsets.only(left: Space.medium),
                  scrollDirection: Axis.horizontal,
                  itemCount: series.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    final serie = series[index];
                    return Container(
                      width: 140,
                      margin: const EdgeInsets.only(
                        right: Space.medium,
                        bottom: Space.medium2,
                      ),
                      child: PosterItem(
                        onTap: () => Navigator.push(
                          context,
                          SharedAxisPageRoute(
                            child: SerieDetailPage(serie: serie),
                          ),
                        ),
                        imageUrl: serie.image.medium,
                        name: serie.name,
                        isSmall: true,
                      ),
                    );
                  },
                ),
              ),
          ],
        );
      },
    );
  }
}
