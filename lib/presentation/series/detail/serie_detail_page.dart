import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/serie/serie_detail/serie_detail_cubit.dart';
import '../../../domain/serie/serie_model.dart';
import '../../core/widgets/detail_view/detail_view.dart';
import 'widgets/serie_detail_info.dart';

class SerieDetailPage extends StatelessWidget {
  const SerieDetailPage({
    Key? key,
    required this.serie,
  }) : super(key: key);

  final SerieModel serie;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          SerieDetailCubit(context.read())..getSeriesEpisodes(serie),
      child: DetailView(
        imageUrl: serie.image.original,
        name: serie.name,
        infoWidget: const SerieDetailInfo(),
      ),
    );
  }
}
