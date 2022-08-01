import 'package:flutter/material.dart';

import '../../../border_size.dart';
import '../../../spacing/spacing.dart';
import '../../../theme/theme.dart';

class DetailBackButton extends StatelessWidget {
  const DetailBackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: Space.large2,
      left: Space.medium,
      child: Container(
        padding: const EdgeInsets.all(Space.extraSmall),
        decoration: BoxDecoration(
          color: context.colorScheme.surface.withOpacity(0.8),
          borderRadius: BorderRadius.circular(BorderSize.medium),
        ),
        child: IconButton(
          onPressed: () => Navigator.pop(context),
          color: context.colorScheme.onSurface,
          icon: const Icon(Icons.chevron_left),
          splashRadius: Space.medium2,
        ),
      ),
    );
  }
}
