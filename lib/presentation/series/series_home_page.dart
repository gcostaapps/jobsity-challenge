import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/serie/series_watcher/series_watcher_cubit.dart';
import '../core/widgets/home_view/home_view.dart';
import 'series_search_page.dart';
import 'series_grid_page.dart';

class SeriesHomePage extends StatelessWidget {
  const SeriesHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SeriesWatcherCubit(
        context.read(),
      )..getSeries(null),
      child: HomeView(
        hint: 'Find series by name',
        onSearch: (search) => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => SeriesSearchPage(search: search),
          ),
        ),
        gridWidget: (controller) => SeriesGridPage(
          scrollController: controller,
        ),
      ),
    );
  }
}
