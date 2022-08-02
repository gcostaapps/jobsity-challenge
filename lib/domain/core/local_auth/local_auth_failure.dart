import 'package:freezed_annotation/freezed_annotation.dart';

part 'local_auth_failure.freezed.dart';

@freezed
class LocalAuthFailure with _$LocalAuthFailure {
  const factory LocalAuthFailure.unknown() = LocalAuthUnknownFailure;
}
