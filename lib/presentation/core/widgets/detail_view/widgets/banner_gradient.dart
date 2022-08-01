import 'package:flutter/material.dart';

import '../../../theme/theme.dart';

class BannerGradient extends StatelessWidget {
  const BannerGradient({
    Key? key,
    required this.imageHeight,
  }) : super(key: key);

  final double imageHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: imageHeight + 2,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            context.colorScheme.background.withOpacity(0),
            context.colorScheme.background
          ],
          stops: const [0.5, 1],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
    );
  }
}
