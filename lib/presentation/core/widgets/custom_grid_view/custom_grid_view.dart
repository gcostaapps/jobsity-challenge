import 'package:flutter/material.dart';

import '../../spacing/spacing.dart';

class CustomGridView<T> extends StatelessWidget {
  const CustomGridView({
    Key? key,
    required this.list,
    required this.isLoadingMore,
    required this.itemBuilder,
  }) : super(key: key);

  final List<T> list;
  final bool isLoadingMore;
  final Widget Function(T) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 240,
            crossAxisCount: 2,
            mainAxisSpacing: Space.medium,
            crossAxisSpacing: Space.medium,
          ),
          controller: ScrollController(),
          itemCount: list.length,
          shrinkWrap: true,
          padding: const EdgeInsets.symmetric(horizontal: Space.medium),
          itemBuilder: (context, index) {
            final item = list[index];
            return itemBuilder(item);
          },
        ),
        if (isLoadingMore) ...[
          const Spacing.vertical(Space.medium2),
          const CircularProgressIndicator(),
        ]
      ],
    );
  }
}
