import 'dart:async';

import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:dio_cache_interceptor_hive_store/dio_cache_interceptor_hive_store.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:path_provider/path_provider.dart';

import 'domain/people/i_people_repository.dart';
import 'domain/serie/i_serie_repository.dart';
import 'infrastructure/core/http_client/dio_client.dart';
import 'infrastructure/core/http_client/http_client.dart';
import 'infrastructure/people/datasource/people_datasource.dart';
import 'infrastructure/people/repository/i_people_datasource.dart';
import 'infrastructure/people/repository/people_repository.dart';
import 'infrastructure/serie/datasource/serie_datasource.dart';
import 'infrastructure/serie/repository/i_serie_datasource.dart';
import 'infrastructure/serie/repository/serie_repository.dart';
import 'utils/app_bloc_observer.dart';

class ApplicationStartConfig {
  Future<void> configureApp(Widget appWidget) async {
    WidgetsFlutterBinding.ensureInitialized();
    _improveGradients();

    final tempDirectory = await getTemporaryDirectory();

    //Dio cache
    final dioCache = CacheOptions(
      store: HiveCacheStore(tempDirectory.path),
      hitCacheOnErrorExcept: [401, 403],
      maxStale: const Duration(days: 1),
      policy: CachePolicy.forceCache,
    );

    //Provide Core Services and Repositories
    appWidget = MultiRepositoryProvider(
      providers: [
        RepositoryProvider<IHttpClient>(
          create: (context) => DioClient(
            //Dio(),
            Dio()..interceptors.add(DioCacheInterceptor(options: dioCache)),
          ),
        ),
        RepositoryProvider<ISerieDatasource>(
          create: (context) => SerieDatasource(context.read()),
        ),
        RepositoryProvider<ISerieRepository>(
          create: (context) => SerieRepository(context.read()),
        ),
        RepositoryProvider<IPeopleDatasource>(
          create: (context) => PeopleDatasource(context.read()),
        ),
        RepositoryProvider<IPeopleRepository>(
          create: (context) => PeopleRepository(context.read()),
        ),
      ],
      child: appWidget,
    );

    return BlocOverrides.runZoned(
      () async {
        runZonedGuarded(
          () async => runApp(appWidget),
          //In real life scenarios a logger would be used to log the errors (Crashlytics, Sentry, etc)
          (exception, stackTrace) => kReleaseMode
              ? null
              : debugPrint('Error\n$exception\n$stackTrace'),
        );
      },
      blocObserver: kReleaseMode ? null : AppBlocObserver(),
    );
  }

  void _improveGradients() => Paint.enableDithering = true;
}
