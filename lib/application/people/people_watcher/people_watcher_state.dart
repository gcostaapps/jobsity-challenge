part of 'people_watcher_cubit.dart';

@freezed
class PeopleWatcherState with _$PeopleWatcherState {
  const factory PeopleWatcherState.initial() = _PeopleWatcherInitial;
  const factory PeopleWatcherState.loading() = _PeopleWatcherLoading;
  const factory PeopleWatcherState.loaded(
          List<PersonModel> people, bool isLoadingMore, bool noMoreItems) =
      _PeopleWatcherLoaded;
  const factory PeopleWatcherState.failed(PersonFailure failure) =
      _PeopleWatcherFailed;
}
