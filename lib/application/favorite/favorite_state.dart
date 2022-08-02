import 'package:flutter/foundation.dart';

import '../../domain/favorite/favorite_failure.dart';
import '../../domain/serie/serie_model.dart';

class FavoriteState {
  final bool isLoading;
  final List<SerieModel> series;
  final FavoriteFailure? failure;
  const FavoriteState({
    required this.isLoading,
    required this.series,
    this.failure,
  });

  FavoriteState copyWith({
    bool? isLoading,
    FavoriteFailure? failure,
    List<SerieModel>? series,
  }) {
    return FavoriteState(
      isLoading: isLoading ?? this.isLoading,
      failure: failure ?? this.failure,
      series: series ?? this.series,
    );
  }

  @override
  String toString() =>
      'FavoriteState(isLoading: $isLoading, failure: $failure, series: $series)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is FavoriteState &&
        other.isLoading == isLoading &&
        other.failure == failure &&
        listEquals(other.series, series) &&
        other.series.length == series.length;
  }

  @override
  int get hashCode => isLoading.hashCode ^ failure.hashCode ^ series.hashCode;
}
