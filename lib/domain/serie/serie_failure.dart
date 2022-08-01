import 'package:freezed_annotation/freezed_annotation.dart';

part 'serie_failure.freezed.dart';

@freezed
class SerieFailure with _$SerieFailure {
  const factory SerieFailure.unknown() = SerieUnknownFailure;
  const factory SerieFailure.notFound() = SerieNotFoundFailure;
}
