import 'package:freezed_annotation/freezed_annotation.dart';

part 'encrypter_failure.freezed.dart';

@freezed
class EncrypterFailure with _$EncrypterFailure {
  const factory EncrypterFailure.unknown() = EncrypterUnknownFailure;
}
