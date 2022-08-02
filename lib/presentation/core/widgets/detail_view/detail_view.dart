import 'package:flutter/material.dart';

import '../../spacing/spacing.dart';
import '../../theme/theme.dart';
import 'widgets/banner_gradient.dart';
import 'widgets/detail_banner.dart';
import 'widgets/detail_back_icon.dart';
import 'widgets/detail_name_text.dart';

class DetailView extends StatelessWidget {
  const DetailView({
    Key? key,
    required this.imageUrl,
    required this.name,
    required this.infoWidget,
  }) : super(key: key);

  final String imageUrl;
  final String name;
  final Widget infoWidget;

  @override
  Widget build(BuildContext context) {
    final double imageHeight = MediaQuery.of(context).size.height * 0.5;

    return Material(
      color: context.colorScheme.background,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.topLeft,
              children: [
                DetailBanner(
                  height: imageHeight,
                  imageUrl: imageUrl,
                ),
                BannerGradient(imageHeight: imageHeight),
                const DetailBackButton(),
                DetailNameText(
                  serieName: name,
                  imageHeight: imageHeight,
                ),
              ],
            ),
            infoWidget,
            const Spacing.vertical(Space.large),
          ],
        ),
      ),
    );
  }
}
