import '../../../domain/people/peson_model.dart';
import '../../../domain/serie/serie_model.dart';
import '../../core/http_client/http_client.dart';
import '../repository/i_people_datasource.dart';

class PeopleDatasource implements IPeopleDatasource {
  final IHttpClient client;

  PeopleDatasource(this.client);

  String baseUrl = 'https://api.tvmaze.com';

  @override
  Future<List<PersonModel>> getPersons(String? name, {int page = 0}) async {
    final searchEmpty = name == null;
    final url = searchEmpty
        ? '$baseUrl/people?page=$page'
        : '$baseUrl/search/people?q=$name';
    final response = await client.get(url);

    if (response.isSuccess()) {
      //TODO Use compute to avoid blocking UI while parsing
      return searchEmpty
          ? parsePersons(response.data)
          : parseSearchedPersons(response.data);
    }

    //Shows not found
    if (response.statusCode == 404) {
      return [];
    }

    throw Exception('Error getting people');
  }

  List<PersonModel> parsePersons(List data) {
    return data.map((e) => PersonModel.fromMap(e)).toList();
  }

  List<PersonModel> parseSearchedPersons(List data) {
    return data.map((e) => PersonModel.fromMap(e['person'])).toList();
  }

  @override
  Future<List<SerieModel>> getPersonSeries(int serieId) async {
    final url = '$baseUrl/people/$serieId/castcredits?embed=show';
    final response = await client.get(url);

    if (response.isSuccess()) {
      return (response.data as List)
          .map((e) => SerieModel.fromMap(e['_embedded']['show']))
          .toList();
    }

    throw Exception('Error getting person series');
  }
}
