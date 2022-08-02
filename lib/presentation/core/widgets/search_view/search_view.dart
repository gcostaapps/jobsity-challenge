import 'package:flutter/material.dart';

import '../../spacing/spacing.dart';
import '../../theme/theme.dart';

class SearchView extends StatelessWidget {
  SearchView({
    Key? key,
    required this.search,
    required this.gridWidget,
  }) : super(key: key);

  final String search;

  final ScrollController controller = ScrollController();
  final Widget Function(ScrollController) gridWidget;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.colorScheme.background,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: context.colorScheme.background,
          body: SingleChildScrollView(
            controller: controller,
            padding: const EdgeInsets.only(
              bottom: Space.large2,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Spacing.vertical(Space.medium2),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: Space.medium),
                  child: IconButton(
                    onPressed: () => Navigator.pop(context),
                    color: context.colorScheme.onSurface,
                    icon: const Icon(Icons.chevron_left),
                    splashRadius: Space.medium2,
                  ),
                ),
                const Spacing.vertical(Space.medium2),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: Space.medium),
                  child: RichText(
                    text: TextSpan(
                      text: 'This is what we found for: ',
                      style: context.textTheme.bodyText1,
                      children: <TextSpan>[
                        TextSpan(
                          text: search,
                          style: context.textTheme.subtitle1,
                        ),
                      ],
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const Spacing.vertical(Space.large2),
                gridWidget(controller),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
