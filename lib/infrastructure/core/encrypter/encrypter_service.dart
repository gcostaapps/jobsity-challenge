import 'dart:convert';

import 'package:dartz/dartz.dart';

import '../../../domain/core/encrypter/encrypter_failure.dart';
import '../../../domain/core/encrypter/i_encrypter_service.dart';
import 'package:crypto/crypto.dart';

class EncrypterService implements IEncrypterService {
  @override
  Future<Either<EncrypterFailure, String>> encrypt(String text) async {
    try {
      final List<int> bytes = utf8.encode(text);
      final textHash = sha256.convert(bytes).toString();
      return Right(textHash);
    } catch (e) {
      return const Left(EncrypterFailure.unknown());
    }
  }
}
