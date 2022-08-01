import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../border_size.dart';
import '../../spacing/space.dart';
import '../../theme/theme.dart';

class PosterItem extends StatelessWidget {
  const PosterItem({
    Key? key,
    required this.imageUrl,
    required this.name,
    required this.onTap,
    this.isSmall = false,
    this.hideName = false,
  }) : super(key: key);

  final String imageUrl;
  final String name;
  final VoidCallback onTap;

  final bool isSmall;
  final bool hideName;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: AppBaseColors.ash,
          borderRadius: BorderRadius.circular(BorderSize.medium),
          boxShadow: AppColors(context.isLightMode).getShadow(null),
          image: DecorationImage(
            image: CachedNetworkImageProvider(imageUrl),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(BorderSize.medium),
            gradient: LinearGradient(
              colors: [
                AppBaseColors.offBlack.withOpacity(0),
                AppBaseColors.offBlack.withOpacity(0.2),
                AppBaseColors.offBlack
              ],
              stops: const [0, 0.6, 1],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          padding: const EdgeInsets.all(Space.small),
          alignment: Alignment.bottomLeft,
          child: hideName
              ? const SizedBox()
              : Text(
                  name,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: (isSmall
                          ? context.textTheme.caption!
                          : context.textTheme.bodyText1!)
                      .copyWith(
                    color: AppBaseColors.offWhite,
                  ),
                ),
        ),
      ),
    );
  }
}
