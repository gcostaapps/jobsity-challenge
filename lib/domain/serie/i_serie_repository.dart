import 'package:dartz/dartz.dart';

import 'serie_failure.dart';
import 'serie_model.dart';

abstract class ISerieRepository {
  Future<Either<SerieFailure, List<SerieModel>>> getSeries(String? name,
      {int page = 0});

  Future<Either<SerieFailure, SerieModel>> getSeriesEpisodes(int serieId);
}
