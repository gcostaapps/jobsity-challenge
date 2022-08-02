import 'package:dartz/dartz.dart';

import 'local_auth_enum.dart';
import 'local_auth_failure.dart';

abstract class ILocalAuthService {
  Future<Either<LocalAuthFailure, LocalAuthEnum>> getLocalAuth();
  Future<Option<LocalAuthFailure>> setLocalAuth(LocalAuthEnum localAuth);
  Future<Either<LocalAuthFailure, String>> savePinCode(String pinCode);
  Future<Either<LocalAuthFailure, String>> getPinCodeHash();
  Future<Either<LocalAuthFailure, bool>> authenticate(LocalAuthEnum localAuth);
  Future<Either<LocalAuthFailure, bool>> canUseBiometric();
  Future<Either<LocalAuthFailure, bool>> canUseAuthentication();
}
