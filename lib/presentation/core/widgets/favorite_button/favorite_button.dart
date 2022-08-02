import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/favorite/favorite_cubit.dart';
import '../../../../domain/serie/serie_model.dart';
import '../../theme/theme.dart';

class FavoriteButton extends StatelessWidget {
  const FavoriteButton({
    Key? key,
    required this.isFavorite,
    required this.serie,
  }) : super(key: key);

  final bool isFavorite;
  final SerieModel serie;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => isFavorite
          ? context.read<FavoriteCubit>().removeFromFavorites(serie)
          : context.read<FavoriteCubit>().addToFavorites(serie),
      child: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_outline_outlined,
        color: isFavorite
            ? AppColors(context.isLightMode).errorColor
            : context.colorScheme.onSurface,
      ),
    );
  }
}
