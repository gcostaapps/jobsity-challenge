import 'package:flutter/material.dart';

import '../../domain/serie/serie_model.dart';
import '../core/page_routes/shared_axis_page_route.dart';
import '../core/spacing/space.dart';
import '../core/widgets/poster_item/poster_item.dart';
import '../series/detail/serie_detail_page.dart';
import '../core/widgets/favorite_button/favorite_button.dart';

class FavoriteItem extends StatelessWidget {
  const FavoriteItem({
    Key? key,
    required this.serie,
  }) : super(key: key);

  final SerieModel serie;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PosterItem(
          imageUrl: serie.image.medium,
          name: serie.name,
          onTap: () => Navigator.push(
            context,
            SharedAxisPageRoute(
              child: SerieDetailPage(serie: serie),
            ),
          ),
        ),
        Positioned(
          top: Space.small2,
          right: Space.small2,
          child: FavoriteButton(isFavorite: true, serie: serie),
        ),
      ],
    );
  }
}
