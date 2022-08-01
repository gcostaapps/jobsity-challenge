import '../../../domain/serie/serie_failure.dart';
import '../../../domain/serie/serie_model.dart';

class SerieDetailState {
  final SerieModel? serie;
  final bool isLoadingEpisodes;
  final SerieFailure? failure;
  SerieDetailState({
    this.serie,
    required this.isLoadingEpisodes,
    this.failure,
  });

  SerieDetailState copyWith({
    SerieModel? serie,
    bool? isLoadingEpisodes,
    SerieFailure? failure,
  }) {
    return SerieDetailState(
      serie: serie ?? this.serie,
      isLoadingEpisodes: isLoadingEpisodes ?? this.isLoadingEpisodes,
      failure: failure ?? this.failure,
    );
  }

  @override
  String toString() =>
      'SerieDetailState(serie: $serie, isLoadingEpisodes: $isLoadingEpisodes, failure: $failure)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is SerieDetailState &&
        other.serie == serie &&
        other.isLoadingEpisodes == isLoadingEpisodes &&
        other.failure == failure;
  }

  @override
  int get hashCode =>
      serie.hashCode ^ isLoadingEpisodes.hashCode ^ failure.hashCode;
}
