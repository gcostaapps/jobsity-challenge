import 'package:flutter/material.dart';

import '../../../core/spacing/spacing.dart';
import '../../../core/theme/theme.dart';

class SerieScheduleGenres extends StatelessWidget {
  const SerieScheduleGenres({
    Key? key,
    required this.schedule,
    required this.genres,
  }) : super(key: key);

  final String schedule;
  final String genres;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Space.medium),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            schedule,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: context.textTheme.bodyText2!.copyWith(
              color: context.colorScheme.onBackground,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            genres,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: context.textTheme.bodyText2!.copyWith(
              color: context.colorScheme.onBackground,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
