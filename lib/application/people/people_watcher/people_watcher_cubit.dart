import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/people/i_people_repository.dart';
import '../../../domain/people/person_failure.dart';
import '../../../domain/people/peson_model.dart';

part 'people_watcher_cubit.freezed.dart';
part 'people_watcher_state.dart';

//This could be refactored to use a generic cubit that do this for people and shows
class PeopleWatcherCubit extends Cubit<PeopleWatcherState> {
  PeopleWatcherCubit(
    this.peopleRepository,
  ) : super(const PeopleWatcherState.initial());

  final IPeopleRepository peopleRepository;

  String? search;
  int currentPage = 0;

  Future<void> getPeople(String? name) async {
    search = name;
    currentPage = 0;
    emit(const PeopleWatcherState.loading());
    final failureOrPeople =
        await peopleRepository.getPersons(name, page: currentPage);
    emit(
      failureOrPeople.fold(
        (failure) => PeopleWatcherState.failed(failure),
        (people) => PeopleWatcherState.loaded(people, false, false),
      ),
    );
  }

  Future<void> loadMorePeople() async {
    state.maybeWhen(
      loaded: (people, isLoadingMore, noMoreItems) async {
        if (people.isNotEmpty && !isLoadingMore && !noMoreItems) {
          emit(PeopleWatcherState.loaded(List.from(people), true, false));
          currentPage++;

          final failureOrPeople =
              await peopleRepository.getPersons(search, page: currentPage);

          emit(
            failureOrPeople.fold(
              (failure) => PeopleWatcherState.failed(failure),
              (newPeople) => PeopleWatcherState.loaded(
                List.from(people)..addAll(newPeople),
                false,
                newPeople.isEmpty,
              ),
            ),
          );
        }
      },
      orElse: () => {},
    );
  }
}
