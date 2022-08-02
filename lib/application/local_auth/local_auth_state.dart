import '../../domain/core/local_auth/local_auth_enum.dart';

class LocalAuthState {
  final bool isAuthenticated;
  final bool canUseBiometrics;
  final bool canUseAuthentication;
  final String? pinCodeHash;
  final LocalAuthEnum localAuthType;
  LocalAuthState({
    required this.isAuthenticated,
    required this.canUseBiometrics,
    required this.canUseAuthentication,
    this.pinCodeHash,
    required this.localAuthType,
  });

  factory LocalAuthState.empty() => LocalAuthState(
        isAuthenticated: false,
        canUseBiometrics: false,
        canUseAuthentication: false,
        localAuthType: LocalAuthEnum.disabled,
      );

  LocalAuthState copyWith({
    bool? isAuthenticated,
    bool? canUseBiometrics,
    bool? canUseAuthentication,
    String? pinCodeHash,
    LocalAuthEnum? localAuthType,
  }) {
    return LocalAuthState(
      isAuthenticated: isAuthenticated ?? this.isAuthenticated,
      canUseBiometrics: canUseBiometrics ?? this.canUseBiometrics,
      canUseAuthentication: canUseAuthentication ?? this.canUseAuthentication,
      pinCodeHash: pinCodeHash ?? this.pinCodeHash,
      localAuthType: localAuthType ?? this.localAuthType,
    );
  }

  @override
  String toString() {
    return 'LocalAuthState(isAuthenticated: $isAuthenticated, canUseBiometrics: $canUseBiometrics, canUseAuthentication: $canUseAuthentication, pinCodeHash: $pinCodeHash, localAuthType: $localAuthType)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is LocalAuthState &&
        other.isAuthenticated == isAuthenticated &&
        other.canUseBiometrics == canUseBiometrics &&
        other.canUseAuthentication == canUseAuthentication &&
        other.pinCodeHash == pinCodeHash &&
        other.localAuthType == localAuthType;
  }

  @override
  int get hashCode {
    return isAuthenticated.hashCode ^
        canUseBiometrics.hashCode ^
        canUseAuthentication.hashCode ^
        pinCodeHash.hashCode ^
        localAuthType.hashCode;
  }
}
