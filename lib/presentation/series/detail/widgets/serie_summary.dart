import 'package:flutter/material.dart';
import 'package:simple_html_css/simple_html_css.dart';

import '../../../core/spacing/spacing.dart';
import '../../../core/theme/theme.dart';

class SerieSummary extends StatelessWidget {
  const SerieSummary({
    Key? key,
    required this.summary,
  }) : super(key: key);

  final String summary;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Space.medium),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Summary',
            overflow: TextOverflow.ellipsis,
            style: context.textTheme.bodyText1!.copyWith(
              color: context.colorScheme.onSurface,
              fontWeight: FontWeight.w600,
            ),
          ),
          const Spacing.vertical(Space.small),
          RichText(
            text: HTML.toTextSpan(
              context,
              summary,
              defaultTextStyle: context.textTheme.bodyText2!.copyWith(
                color: context.colorScheme.onBackground,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
