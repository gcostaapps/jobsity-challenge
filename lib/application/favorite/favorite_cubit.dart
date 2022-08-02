import 'package:bloc/bloc.dart';
import 'package:collection/collection.dart';

import '../../domain/favorite/i_favorite_service.dart';
import '../../domain/serie/serie_model.dart';
import 'favorite_state.dart';

class FavoriteCubit extends Cubit<FavoriteState> {
  FavoriteCubit(
    this.favoriteService,
  ) : super(const FavoriteState(isLoading: true, series: []));

  final IFavoriteService favoriteService;

  Future<void> getFavorites() async {
    emit(const FavoriteState(isLoading: true, series: []));
    final response = await favoriteService.getFavoriteSeries();

    response.fold(
      (l) => emit(state.copyWith(failure: l, isLoading: false)),
      (r) => emit(
        state.copyWith(
          series: sortList(r),
          isLoading: false,
        ),
      ),
    );
  }

  Future<void> addToFavorites(SerieModel serie) async {
    emit(state.copyWith(isLoading: true));
    final response = await favoriteService.addFavorite(serie);

    response.fold(
        () => emit(
              FavoriteState(
                isLoading: false,
                series: sortList(state.series..add(serie)),
              ),
            ),
        (f) => emit(state.copyWith(failure: f, isLoading: false)));
  }

  Future<void> removeFromFavorites(SerieModel serie) async {
    emit(state.copyWith(isLoading: true));
    final response = await favoriteService.removeFavorite(serie);

    response.fold(
        () => emit(
              FavoriteState(
                isLoading: false,
                series: sortList(
                  state.series..removeWhere((s) => s.id == serie.id),
                ),
              ),
            ),
        (f) => emit(state.copyWith(failure: f, isLoading: false)));
  }

  List<SerieModel> sortList(List<SerieModel> oldList) {
    final sortedList = List<SerieModel>.from(oldList)
      ..sort((a, b) => compareNatural(a.name, b.name));
    return sortedList;
  }
}
