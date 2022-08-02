import 'package:flutter/material.dart';

import '../../../../domain/serie/serie_episode_model.dart';
import '../../../core/spacing/spacing.dart';
import '../../../core/theme/theme.dart';
import '../../../core/widgets/poster_item/poster_item.dart';
import '../episode/episode_bottom_sheet.dart';

class SerieSeasonEpisodes extends StatelessWidget {
  const SerieSeasonEpisodes({
    Key? key,
    required this.season,
    required this.episodes,
  }) : super(key: key);

  final int season;
  final List<SerieEpisodeModel> episodes;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: Space.medium),
          child: Text(
            'Season $season',
            overflow: TextOverflow.ellipsis,
            style: context.textTheme.subtitle1!.copyWith(
              color: context.colorScheme.onSurface,
            ),
          ),
        ),
        const Spacing.vertical(Space.small),
        SizedBox(
          height: 220,
          child: ListView.builder(
            padding: const EdgeInsets.only(left: Space.medium),
            scrollDirection: Axis.horizontal,
            itemCount: episodes.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              final episode = episodes[index];
              return Container(
                width: 140,
                margin: const EdgeInsets.only(
                  right: Space.medium,
                  bottom: Space.medium2,
                ),
                child: PosterItem(
                  onTap: () => showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    barrierColor: AppBaseColors.ash.withOpacity(0.8),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(Space.medium),
                    ),
                    isDismissible: true,
                    builder: (context) => EpisodeBottomSheet(episode: episode),
                  ),
                  imageUrl: episode.image.medium,
                  name: episode.name,
                  isSmall: true,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
