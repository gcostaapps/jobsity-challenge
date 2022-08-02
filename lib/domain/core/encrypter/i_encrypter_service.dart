import 'package:dartz/dartz.dart';

import 'encrypter_failure.dart';

abstract class IEncrypterService {
  Future<Either<EncrypterFailure, String>> encrypt(String text);
}
