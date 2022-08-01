import 'package:dartz/dartz.dart';

import '../../../domain/serie/i_serie_repository.dart';
import '../../../domain/serie/serie_failure.dart';
import '../../../domain/serie/serie_model.dart';
import 'i_serie_datasource.dart';

class SerieRepository implements ISerieRepository {
  ISerieDatasource datasource;

  SerieRepository(this.datasource);

  @override
  Future<Either<SerieFailure, List<SerieModel>>> getSeries(String? name,
      {int page = 0}) async {
    try {
      final response = await datasource.getSeries(name);
      return Right(response);
    } catch (e) {
      return const Left(SerieFailure.unknown());
    }
  }

  @override
  Future<Either<SerieFailure, SerieModel>> getSeriesEpisodes(
      int serieId) async {
    try {
      final response = await datasource.getSeriesEpisodes(serieId);
      return Right(response);
    } catch (e) {
      return const Left(SerieFailure.unknown());
    }
  }
}
