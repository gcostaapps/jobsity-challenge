import '../../../domain/serie/serie_model.dart';
import '../../../domain/core/http_client/http_client.dart';
import '../repository/i_serie_datasource.dart';

class SerieDatasource implements ISerieDatasource {
  final IHttpClient client;

  SerieDatasource(this.client);

  String baseUrl = 'https://api.tvmaze.com';

  @override
  Future<List<SerieModel>> getSeries(String? name, {int page = 0}) async {
    final searchEmpty = name == null;
    final url = searchEmpty
        ? '$baseUrl/shows?page=$page'
        : '$baseUrl/search/shows?q=$name';
    final response = await client.get(url);

    if (response.isSuccess()) {
      //TODO Use compute to avoid blocking UI in lower end devices while parsing
      return searchEmpty
          ? parseSeries(response.data)
          : parseSearchedSeries(response.data);
    }

    //Shows not found
    if (response.statusCode == 404) {
      return [];
    }

    throw Exception('Error getting series');
  }

  List<SerieModel> parseSeries(List data) {
    return data.map((e) => SerieModel.fromMap(e)).toList();
  }

  List<SerieModel> parseSearchedSeries(List data) {
    return data.map((e) => SerieModel.fromMap(e['show'])).toList();
  }

  @override
  Future<SerieModel> getSeriesEpisodes(int serieId) async {
    final url = '$baseUrl/shows/$serieId?embed=episodes';
    final response = await client.get(url);

    if (response.isSuccess()) {
      return SerieModel.fromMap(response.data);
    }

    throw Exception('Error getting series episodes');
  }
}
