import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/people/people_watcher/people_watcher_cubit.dart';
import '../core/widgets/search_view/search_view.dart';
import 'people_grid_page.dart';

class PeopleSearchPage extends StatelessWidget {
  const PeopleSearchPage({
    Key? key,
    required this.search,
  }) : super(key: key);

  final String search;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PeopleWatcherCubit(
        context.read(),
      )..getPeople(search),
      child: SearchView(
        search: search,
        gridWidget: (controller) => PeopleGridPage(
          scrollController: controller,
          infiniteScroll: false,
        ),
      ),
    );
  }
}
