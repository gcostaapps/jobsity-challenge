import '../../../domain/people/peson_model.dart';
import '../../../domain/serie/serie_model.dart';

abstract class IPeopleDatasource {
  Future<List<PersonModel>> getPersons(String? name, {int page = 0});
  Future<List<SerieModel>> getPersonSeries(int personId);
}
