import '../../../domain/serie/serie_model.dart';

abstract class ISerieDatasource {
  Future<List<SerieModel>> getSeries(String? name, {int page = 0});
  Future<SerieModel> getSeriesEpisodes(int serieId);
}
