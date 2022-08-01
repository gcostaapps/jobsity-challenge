import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/people/people_watcher/people_watcher_cubit.dart';
import '../core/widgets/home_view/home_view.dart';
import 'people_grid_page.dart';
import 'people_search_page.dart';

class PeopleHomePage extends StatelessWidget {
  const PeopleHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PeopleWatcherCubit(
        context.read(),
      )..getPeople(null),
      child: HomeView(
        hint: 'Find people by name',
        onSearch: (search) => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => PeopleSearchPage(search: search),
          ),
        ),
        gridWidget: (controller) => PeopleGridPage(
          scrollController: controller,
        ),
      ),
    );
  }
}
