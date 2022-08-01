part of 'series_watcher_cubit.dart';

@freezed
class SeriesWatcherState with _$SeriesWatcherState {
  const factory SeriesWatcherState.initial() = _SeriesWatcherInitial;
  const factory SeriesWatcherState.loading() = _SeriesWatcherLoading;
  const factory SeriesWatcherState.loaded(
          List<SerieModel> series, bool isLoadingMore, bool noMoreItems) =
      _SeriesWatcherLoaded;
  const factory SeriesWatcherState.failed(SerieFailure failure) =
      _SeriesWatcherFailed;
}
