import 'package:dartz/dartz.dart';

import '../serie/serie_model.dart';
import 'person_failure.dart';
import 'peson_model.dart';

abstract class IPeopleRepository {
  Future<Either<PersonFailure, List<PersonModel>>> getPersons(String? name,
      {int page = 0});

  Future<Either<PersonFailure, List<SerieModel>>> getPersonSeries(int personId);
}
