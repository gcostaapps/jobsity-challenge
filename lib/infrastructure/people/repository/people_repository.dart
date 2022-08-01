import 'package:dartz/dartz.dart';

import '../../../domain/people/i_people_repository.dart';
import '../../../domain/people/person_failure.dart';
import '../../../domain/people/peson_model.dart';
import '../../../domain/serie/serie_model.dart';
import 'i_people_datasource.dart';

class PeopleRepository implements IPeopleRepository {
  IPeopleDatasource datasource;

  PeopleRepository(this.datasource);

  @override
  Future<Either<PersonFailure, List<PersonModel>>> getPersons(String? name,
      {int page = 0}) async {
    try {
      final response = await datasource.getPersons(name, page: page);
      return Right(response);
    } catch (e) {
      return const Left(PersonFailure.unknown());
    }
  }

  @override
  Future<Either<PersonFailure, List<SerieModel>>> getPersonSeries(
      int personId) async {
    try {
      final response = await datasource.getPersonSeries(personId);
      return Right(response);
    } catch (e) {
      return const Left(PersonFailure.unknown());
    }
  }
}
