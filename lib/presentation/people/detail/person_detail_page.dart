import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/people/person_detail/person_detail_cubit.dart';
import '../../../domain/people/peson_model.dart';
import '../../core/widgets/detail_view/detail_view.dart';
import 'person_detail_info.dart';

class PersonDetailPage extends StatelessWidget {
  const PersonDetailPage({
    Key? key,
    required this.person,
  }) : super(key: key);

  final PersonModel person;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          PersonDetailCubit(context.read())..getPersonsEpisodes(person),
      child: DetailView(
        imageUrl: person.image.original,
        name: person.name,
        infoWidget: const PersonDetailInfo(),
      ),
    );
  }
}
