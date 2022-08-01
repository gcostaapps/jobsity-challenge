import 'package:bloc/bloc.dart';

import '../../../domain/people/i_people_repository.dart';
import '../../../domain/people/peson_model.dart';
import 'person_detail_state.dart';

//This could be refactored to use a generic cubit that do this for people and shows
class PersonDetailCubit extends Cubit<PersonDetailState> {
  PersonDetailCubit(
    this.peopleRepository,
  ) : super(PersonDetailState(isLoadingSeries: true));

  final IPeopleRepository peopleRepository;

  Future<void> getPersonsEpisodes(PersonModel person) async {
    emit(PersonDetailState(person: person, isLoadingSeries: true));
    final response = await peopleRepository.getPersonSeries(person.id);

    response.fold(
      (l) => emit(state.copyWith(failure: l, isLoadingSeries: false)),
      (r) => emit(
        state.copyWith(
          person: person.copyWith(series: r),
          isLoadingSeries: false,
        ),
      ),
    );
  }
}
