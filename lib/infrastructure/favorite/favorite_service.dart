import 'package:dartz/dartz.dart';

import '../../domain/core/local_storage/i_local_storage.dart';
import '../../domain/favorite/favorite_failure.dart';
import '../../domain/favorite/i_favorite_service.dart';
import '../../domain/serie/serie_model.dart';

class FavoriteService implements IFavoriteService {
  final ILocalStorage localStorage;

  FavoriteService(this.localStorage);

  final String favoriteKey = 'favorites';

  @override
  Future<Either<FavoriteFailure, List<SerieModel>>> getFavoriteSeries() async {
    try {
      final response = await getFavoriteSeriesSaved();
      return Right(response);
    } catch (e) {
      return const Left(FavoriteFailure.unknown());
    }
  }

  Future<List<SerieModel>> getFavoriteSeriesSaved() async {
    final response = await localStorage.read<List<String>>(favoriteKey);
    if (response == null || response.isEmpty) return [];
    return response.map((e) => SerieModel.fromJson(e)).toList();
  }

  @override
  Future<Option<FavoriteFailure>> addFavorite(SerieModel serie) async {
    try {
      final response = await getFavoriteSeriesSaved();
      response.add(serie);
      localStorage.write(
        favoriteKey,
        response.map((e) => e.toJson()).toList(),
      );
      return const None();
    } catch (e) {
      return const Some(FavoriteFailure.unknown());
    }
  }

  @override
  Future<Option<FavoriteFailure>> removeFavorite(SerieModel serie) async {
    try {
      final response = await getFavoriteSeriesSaved();
      response.removeWhere((s) => s.id == serie.id);
      localStorage.write(
        favoriteKey,
        response.map((e) => e.toJson()).toList(),
      );
      return const None();
    } catch (e) {
      return const Some(FavoriteFailure.unknown());
    }
  }
}
