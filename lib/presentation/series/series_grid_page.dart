import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/serie/series_watcher/series_watcher_cubit.dart';
import '../../domain/serie/serie_model.dart';
import '../core/page_routes/shared_axis_page_route.dart';
import '../core/spacing/space.dart';
import '../core/spacing/spacing.dart';
import '../core/theme/theme.dart';
import '../core/widgets/custom_grid_view/custom_grid_view.dart';
import '../core/widgets/poster_item/poster_item.dart';
import 'detail/serie_detail_page.dart';

class SeriesGridPage extends StatefulWidget {
  const SeriesGridPage({
    Key? key,
    required this.scrollController,
    this.infiniteScroll = true,
  }) : super(key: key);

  final ScrollController scrollController;
  final bool infiniteScroll;

  @override
  State<SeriesGridPage> createState() => _SeriesGridPageState();
}

class _SeriesGridPageState extends State<SeriesGridPage> {
  @override
  void initState() {
    super.initState();
    if (widget.infiniteScroll) {
      widget.scrollController.addListener(_scrollListener);
    }
  }

  @override
  void dispose() {
    if (widget.infiniteScroll) {
      widget.scrollController.removeListener(_scrollListener);
    }
    super.dispose();
  }

  Future<void> _scrollListener() async {
    if (widget.scrollController.position.extentAfter < 300) {
      context.read<SeriesWatcherCubit>().loadMoreSeries();
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SeriesWatcherCubit, SeriesWatcherState>(
      builder: (context, state) {
        return state.when(
          initial: () => const Center(
            child: CircularProgressIndicator(),
          ),
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
          loaded: (series, loadingMore, noMoreItems) =>
              CustomGridView<SerieModel>(
            key: const ValueKey('SeriesGrid'),
            list: series,
            isLoadingMore: loadingMore,
            itemBuilder: (item) => PosterItem(
              onTap: () => Navigator.push(
                context,
                SharedAxisPageRoute(
                  child: SerieDetailPage(serie: item),
                ),
              ),
              imageUrl: item.image.medium,
              name: item.name,
            ),
          ),
          failed: (failure) {
            final errorMessage = failure.when(
              unknown: () =>
                  'An error ocurred, please check your internet connection.',
              notFound: () => 'Series not found',
            );

            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: Space.medium),
              child: Text(
                errorMessage,
                style: context.textTheme.bodyText2,
                textAlign: TextAlign.center,
              ),
            );
          },
        );
      },
    );
  }
}
