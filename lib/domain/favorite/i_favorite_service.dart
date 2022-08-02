import 'package:dartz/dartz.dart';

import '../serie/serie_model.dart';
import 'favorite_failure.dart';

abstract class IFavoriteService {
  Future<Either<FavoriteFailure, List<SerieModel>>> getFavoriteSeries();
  Future<Option<FavoriteFailure>> removeFavorite(SerieModel serie);
  Future<Option<FavoriteFailure>> addFavorite(SerieModel serie);
}
