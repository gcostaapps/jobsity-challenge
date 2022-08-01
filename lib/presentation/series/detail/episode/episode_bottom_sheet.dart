import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:simple_html_css/simple_html_css.dart';

import '../../../../domain/serie/serie_episode_model.dart';
import '../../../core/border_size.dart';
import '../../../core/spacing/spacing.dart';
import '../../../core/theme/theme.dart';
import 'episode_bottom_sheet_info.dart';

class EpisodeBottomSheet extends StatelessWidget {
  const EpisodeBottomSheet({
    Key? key,
    required this.episode,
  }) : super(key: key);

  final SerieEpisodeModel episode;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: Space.small),
        child: DraggableScrollableSheet(
          maxChildSize: 0.85,
          minChildSize: 0.5,
          expand: false,
          builder: (context, controller) => SingleChildScrollView(
            padding: const EdgeInsets.all(Space.medium),
            controller: controller,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 220 - Space.medium2,
                  width: 140,
                  decoration: BoxDecoration(
                    color: AppBaseColors.ash,
                    borderRadius: BorderRadius.circular(BorderSize.medium),
                    boxShadow: AppColors(context.isLightMode).getShadow(null),
                    image: DecorationImage(
                      image: CachedNetworkImageProvider(episode.image.medium),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: const SizedBox(),
                ),
                const Spacing.vertical(Space.medium2),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    EpisodeBottomSheetInfo(
                      info: 'Name',
                      value: episode.name,
                    ),
                    EpisodeBottomSheetInfo(
                      info: 'Season',
                      value: episode.season.toString(),
                    ),
                    EpisodeBottomSheetInfo(
                      info: 'Number',
                      value: episode.number.toString(),
                    ),
                  ],
                ),
                const Spacing.vertical(Space.medium),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Summary',
                    style: context.textTheme.bodyText2!.copyWith(
                      color: context.colorScheme.onBackground,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: RichText(
                    text: HTML.toTextSpan(
                      context,
                      episode.summary,
                      defaultTextStyle: context.textTheme.bodyText2!.copyWith(
                        color: context.colorScheme.onSurface,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                const Spacing.vertical(Space.large2),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
