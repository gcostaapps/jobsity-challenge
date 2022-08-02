import 'dart:async';

import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:dio_cache_interceptor_hive_store/dio_cache_interceptor_hive_store.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:local_auth/local_auth.dart';
import 'package:path_provider/path_provider.dart';

import 'application/local_auth/local_auth_cubit.dart';
import 'domain/core/local_auth/i_local_auth_service.dart';
import 'domain/core/local_storage/i_local_storage.dart';
import 'domain/favorite/i_favorite_service.dart';
import 'domain/people/i_people_repository.dart';
import 'domain/serie/i_serie_repository.dart';
import 'infrastructure/core/encrypter/encrypter_service.dart';
import 'infrastructure/core/http_client/dio_client.dart';
import 'domain/core/http_client/http_client.dart';
import 'infrastructure/core/local_auth/local_auth_service.dart';
import 'infrastructure/core/local_storage/hive_storage.dart';
import 'infrastructure/favorite/favorite_service.dart';
import 'infrastructure/people/datasource/people_datasource.dart';
import 'infrastructure/people/repository/i_people_datasource.dart';
import 'infrastructure/people/repository/people_repository.dart';
import 'infrastructure/serie/datasource/serie_datasource.dart';
import 'infrastructure/serie/repository/i_serie_datasource.dart';
import 'infrastructure/serie/repository/serie_repository.dart';
import 'application/app_bloc_observer.dart';

class ApplicationStartConfig {
  Future<void> configureApp(Widget appWidget) async {
    WidgetsFlutterBinding.ensureInitialized();
    _improveGradients();

    final tempDirectory = await getTemporaryDirectory();
    Hive.init(tempDirectory.path);

    //Dio cache
    final dioCache = CacheOptions(
      store: HiveCacheStore(tempDirectory.path),
      hitCacheOnErrorExcept: [401, 403],
      maxStale: const Duration(days: 1),
      policy: CachePolicy.forceCache,
    );

    //Load auth cubits before app start
    final hiveStorage = HiveStorage();
    final localAuthentication = LocalAuthentication();
    final localAuthService = LocalAuthService(hiveStorage, localAuthentication);
    final authCubit = LocalAuthCubit(localAuthService, EncrypterService());

    await authCubit.initCubit();

    //Provide Core Services and Repositories
    appWidget = MultiRepositoryProvider(
      providers: [
        RepositoryProvider<IHttpClient>(
          create: (context) => DioClient(
            Dio()..interceptors.add(DioCacheInterceptor(options: dioCache)),
          ),
        ),
        RepositoryProvider<ILocalStorage>.value(value: hiveStorage),
        RepositoryProvider<LocalAuthentication>.value(
          value: localAuthentication,
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
        RepositoryProvider<IFavoriteService>(
          create: (context) => FavoriteService(context.read()),
        ),
        RepositoryProvider<ILocalAuthService>.value(value: localAuthService),
      ],
      child: appWidget,
    );

    //Load auth cubit before app start
    appWidget = MultiBlocProvider(
      providers: [
        BlocProvider<LocalAuthCubit>(create: (context) => authCubit),
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
