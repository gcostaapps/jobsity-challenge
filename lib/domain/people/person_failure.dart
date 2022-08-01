import 'package:freezed_annotation/freezed_annotation.dart';

part 'person_failure.freezed.dart';

@freezed
class PersonFailure with _$PersonFailure {
  const factory PersonFailure.unknown() = PersonUnknownFailure;
  const factory PersonFailure.notFound() = PersonNotFoundFailure;
}
