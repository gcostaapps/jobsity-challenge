import '../../../domain/people/person_failure.dart';
import '../../../domain/people/peson_model.dart';

class PersonDetailState {
  final PersonModel? person;
  final bool isLoadingSeries;
  final PersonFailure? failure;
  PersonDetailState({
    this.person,
    required this.isLoadingSeries,
    this.failure,
  });

  PersonDetailState copyWith({
    PersonModel? person,
    bool? isLoadingSeries,
    PersonFailure? failure,
  }) {
    return PersonDetailState(
      person: person ?? this.person,
      isLoadingSeries: isLoadingSeries ?? this.isLoadingSeries,
      failure: failure ?? this.failure,
    );
  }

  @override
  String toString() =>
      'PersonDetailState(person: $person, isLoadingSeries: $isLoadingSeries, failure: $failure)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is PersonDetailState &&
        other.person == person &&
        other.isLoadingSeries == isLoadingSeries &&
        other.failure == failure;
  }

  @override
  int get hashCode =>
      person.hashCode ^ isLoadingSeries.hashCode ^ failure.hashCode;
}
