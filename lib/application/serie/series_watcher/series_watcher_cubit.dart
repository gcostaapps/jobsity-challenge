import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/serie/i_serie_repository.dart';
import '../../../domain/serie/serie_failure.dart';
import '../../../domain/serie/serie_model.dart';

part 'series_watcher_cubit.freezed.dart';
part 'series_watcher_state.dart';

//This could be refactored to use a generic cubit that do this for people and shows
class SeriesWatcherCubit extends Cubit<SeriesWatcherState> {
  SeriesWatcherCubit(
    this.seriesRepository,
  ) : super(const SeriesWatcherState.initial());

  final ISerieRepository seriesRepository;

  String? search;
  int currentPage = 0;

  Future<void> getSeries(String? name) async {
    search = name;
    currentPage = 0;
    emit(const SeriesWatcherState.loading());
    final failureOrSeries =
        await seriesRepository.getSeries(name, page: currentPage);
    emit(
      failureOrSeries.fold(
        (failure) => SeriesWatcherState.failed(failure),
        (series) => SeriesWatcherState.loaded(series, false, false),
      ),
    );
  }

  Future<void> loadMoreSeries() async {
    state.maybeWhen(
      loaded: (series, isLoadingMore, noMoreItems) async {
        if (series.isNotEmpty && !isLoadingMore && !noMoreItems) {
          emit(SeriesWatcherState.loaded(List.from(series), true, false));
          currentPage++;

          final failureOrSeries =
              await seriesRepository.getSeries(search, page: currentPage);

          emit(
            failureOrSeries.fold(
              (failure) => SeriesWatcherState.failed(failure),
              (newSeries) => SeriesWatcherState.loaded(
                List.from(series)..addAll(newSeries),
                false,
                newSeries.isEmpty,
              ),
            ),
          );
        }
      },
      orElse: () => {},
    );
  }
}
