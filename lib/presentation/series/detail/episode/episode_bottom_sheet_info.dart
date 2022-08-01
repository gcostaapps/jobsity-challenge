import 'package:flutter/material.dart';

import '../../../core/theme/theme.dart';

class EpisodeBottomSheetInfo extends StatelessWidget {
  const EpisodeBottomSheetInfo({
    Key? key,
    required this.info,
    required this.value,
  }) : super(key: key);

  final String info;
  final String value;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            info,
            style: context.textTheme.bodyText2!.copyWith(
              color: context.colorScheme.onBackground,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            value,
            textAlign: TextAlign.center,
            style: context.textTheme.bodyText2!.copyWith(
              color: context.colorScheme.onSurface,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
