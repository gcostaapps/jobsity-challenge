import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/serie/series_watcher/series_watcher_cubit.dart';
import '../core/widgets/search_view/search_view.dart';
import 'series_grid_page.dart';

class SeriesSearchPage extends StatelessWidget {
  const SeriesSearchPage({
    Key? key,
    required this.search,
  }) : super(key: key);

  final String search;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SeriesWatcherCubit(
        context.read(),
      )..getSeries(search),
      child: SearchView(
        search: search,
        gridWidget: (controller) => SeriesGridPage(
          scrollController: controller,
          infiniteScroll: false,
        ),
      ),
    );
  }
}
