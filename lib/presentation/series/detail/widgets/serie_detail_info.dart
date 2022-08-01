import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/serie/serie_detail/serie_detail_cubit.dart';
import '../../../../application/serie/serie_detail/serie_detail_state.dart';
import '../../../../domain/serie/serie_episode_model.dart';
import '../../../core/spacing/spacing.dart';
import '../../../core/theme/theme.dart';
import 'serie_schedule_genres.dart';
import 'serie_season_episodes.dart';
import 'serie_summary.dart';

class SerieDetailInfo extends StatelessWidget {
  const SerieDetailInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SerieDetailCubit, SerieDetailState>(
      builder: (context, state) {
        final hasError = state.failure != null;
        Map<int, List<SerieEpisodeModel>> episodesBySeason = {};
        if (!state.isLoadingEpisodes && state.serie!.episodes.isNotEmpty) {
          episodesBySeason = groupBy<SerieEpisodeModel, int>(
            state.serie!.episodes.sorted(
              (a, b) => a.season.compareTo(b.season),
            ),
            (episode) => episode.season,
          );
        }

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SerieScheduleGenres(
              schedule:
                  '${state.serie!.schedule.time} • ${state.serie!.schedule.days.join(', ')}',
              genres: state.serie!.genres.join(', '),
            ),
            const Spacing.vertical(Space.medium2),
            SerieSummary(summary: state.serie!.summary),
            const Spacing.vertical(Space.medium2),
            if (state.isLoadingEpisodes)
              const Center(child: CircularProgressIndicator()),
            if (hasError)
              Padding(
                padding: const EdgeInsets.only(left: Space.medium),
                child: Text(
                  'Error loading episodes, please check your internet connection',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  style: context.textTheme.bodyText2!.copyWith(
                    color: context.colorScheme.error,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            if (episodesBySeason.isNotEmpty)
              ...episodesBySeason.entries.map(
                (entry) => SerieSeasonEpisodes(
                  season: entry.key,
                  episodes: entry.value
                    ..sort((a, b) => a.number.compareTo(b.number)),
                ),
              ),
          ],
        );
      },
    );
  }
}
