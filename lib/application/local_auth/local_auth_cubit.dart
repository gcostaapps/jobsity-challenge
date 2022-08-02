import 'package:bloc/bloc.dart';

import '../../domain/core/encrypter/i_encrypter_service.dart';
import '../../domain/core/local_auth/i_local_auth_service.dart';
import '../../domain/core/local_auth/local_auth_enum.dart';
import 'local_auth_state.dart';

class LocalAuthCubit extends Cubit<LocalAuthState> {
  LocalAuthCubit(
    this.localAuthService,
    this.encrypterService,
  ) : super(LocalAuthState.empty());

  final ILocalAuthService localAuthService;
  final IEncrypterService encrypterService;

  Future<void> initCubit() async {
    final canAuthenticate = (await localAuthService.canUseAuthentication())
        .fold((l) => false, (r) => r);

    final canUseBiometrics = canAuthenticate
        ? (await localAuthService.canUseBiometric()).fold(
            (l) => false,
            (r) => r,
          )
        : false;

    final localAuthType = (await localAuthService.getLocalAuth()).fold(
      (l) => LocalAuthEnum.disabled,
      (r) => r,
    );

    final pinCodeHash = (await localAuthService.getPinCodeHash()).fold(
      (l) => null,
      (r) => r,
    );

    emit(
      state.copyWith(
        canUseAuthentication: canAuthenticate,
        canUseBiometrics: canUseBiometrics,
        localAuthType: localAuthType,
        isAuthenticated: false,
        pinCodeHash: pinCodeHash,
      ),
    );
  }

  Future<void> setAuthType(LocalAuthEnum type, {String? pinCode}) async {
    if (type == LocalAuthEnum.pin && pinCode == null) return;

    String? pinCodeHash;
    if (type == LocalAuthEnum.pin && pinCode != null) {
      final response = await encrypterService.encrypt(pinCode);
      pinCodeHash = response.fold((l) => '', (r) => r);
      final hasSavingResponse =
          await localAuthService.savePinCode(pinCodeHash!);
      if (hasSavingResponse.isLeft()) {
        return;
      }
    }

    final response = await localAuthService.setLocalAuth(type);

    response.fold(
        () => emit(
              state.copyWith(localAuthType: type, pinCodeHash: pinCodeHash),
            ),
        (f) => null);

    if (type != LocalAuthEnum.disabled) {
      emit(state.copyWith(isAuthenticated: false));
    }
  }

  Future<bool> authenticateWithPinCode(String pinCode) async {
    final response = await encrypterService.encrypt(pinCode);
    final pinCodeHash = response.fold((l) => '', (r) => r);
    final isAuthenticated = pinCodeHash == state.pinCodeHash;

    emit(state.copyWith(isAuthenticated: isAuthenticated));
    return isAuthenticated;
  }

  Future<void> authenticateWithFingerPrint() async {
    final response = await localAuthService.authenticate(state.localAuthType);

    response.fold((l) => null, (r) => emit(state.copyWith(isAuthenticated: r)));
  }
}
