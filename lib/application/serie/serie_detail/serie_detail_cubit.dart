import 'package:bloc/bloc.dart';

import '../../../domain/serie/i_serie_repository.dart';
import '../../../domain/serie/serie_model.dart';
import 'serie_detail_state.dart';

//This could be refactored to use a generic cubit that do this for people and shows
class SerieDetailCubit extends Cubit<SerieDetailState> {
  SerieDetailCubit(
    this.seriesRepository,
  ) : super(SerieDetailState(isLoadingEpisodes: true));

  final ISerieRepository seriesRepository;

  Future<void> getSeriesEpisodes(SerieModel serie) async {
    emit(SerieDetailState(serie: serie, isLoadingEpisodes: true));
    final response = await seriesRepository.getSeriesEpisodes(serie.id);

    response.fold(
      (l) => emit(state.copyWith(failure: l, isLoadingEpisodes: false)),
      (r) => emit(state.copyWith(serie: r, isLoadingEpisodes: false)),
    );
  }
}
