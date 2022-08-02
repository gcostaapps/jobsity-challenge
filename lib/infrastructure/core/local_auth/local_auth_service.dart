import 'package:dartz/dartz.dart';

import '../../../domain/core/local_auth/i_local_auth_service.dart';
import '../../../domain/core/local_auth/local_auth_failure.dart';
import '../../../domain/core/local_auth/local_auth_enum.dart';
import '../../../domain/core/local_storage/i_local_storage.dart';
import 'package:local_auth/local_auth.dart';

class LocalAuthService implements ILocalAuthService {
  final ILocalStorage localStorage;
  final LocalAuthentication localAuthentication;

  LocalAuthService(this.localStorage, this.localAuthentication);

  final String localAuthKey = 'localAuth';
  final String localAuthPinCodeKey = 'localAuthPinCode';

  @override
  Future<Either<LocalAuthFailure, bool>> authenticate(
      LocalAuthEnum localAuth) async {
    try {
      if (localAuth == LocalAuthEnum.disabled) return const Right(true);

      final success = await localAuthentication.authenticate(
        localizedReason: 'Please authenticate to use the app',
        options: AuthenticationOptions(
          stickyAuth: true,
          biometricOnly: localAuth == LocalAuthEnum.fingerprint,
        ),
      );
      return Right(success);
    } catch (e) {
      return const Left(LocalAuthFailure.unknown());
    }
  }

  Future<LocalAuthEnum> getLocalAuthSaved() async {
    final response = await localStorage.read<int>(localAuthKey);
    if (response == null) return LocalAuthEnum.disabled;
    return LocalAuthEnum.values[response];
  }

  @override
  Future<Either<LocalAuthFailure, LocalAuthEnum>> getLocalAuth() async {
    try {
      final response = await getLocalAuthSaved();
      return Right(response);
    } catch (e) {
      return const Left(LocalAuthFailure.unknown());
    }
  }

  @override
  Future<Option<LocalAuthFailure>> setLocalAuth(LocalAuthEnum localAuth) async {
    try {
      await localStorage.write(localAuthKey, localAuth.index);
      return const None();
    } catch (e) {
      return const Some(LocalAuthFailure.unknown());
    }
  }

  @override
  Future<Either<LocalAuthFailure, bool>> canUseBiometric() async {
    try {
      final canUseBiometrics = await localAuthentication.canCheckBiometrics;
      if (canUseBiometrics) {
        final hasBiometric =
            (await localAuthentication.getAvailableBiometrics()).isNotEmpty;
        return Right(hasBiometric);
      }
      return const Right(false);
    } catch (e) {
      return const Left(LocalAuthFailure.unknown());
    }
  }

  @override
  Future<Either<LocalAuthFailure, bool>> canUseAuthentication() async {
    try {
      final isDeviceSupported = await localAuthentication.isDeviceSupported();
      return Right(isDeviceSupported);
    } catch (e) {
      return const Left(LocalAuthFailure.unknown());
    }
  }

  @override
  Future<Either<LocalAuthFailure, String>> savePinCode(String pinCode) async {
    try {
      await localStorage.write(localAuthPinCodeKey, pinCode);
      return Right(pinCode);
    } catch (e) {
      return const Left(LocalAuthFailure.unknown());
    }
  }

  @override
  Future<Either<LocalAuthFailure, String>> getPinCodeHash() async {
    try {
      final pinCodeHash = await localStorage.read(localAuthPinCodeKey);
      return Right(pinCodeHash);
    } catch (e) {
      return const Left(LocalAuthFailure.unknown());
    }
  }
}
