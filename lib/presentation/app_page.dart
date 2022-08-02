import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../application/favorite/favorite_cubit.dart';
import 'core/theme/app_theme.dart';
import 'core/theme/colors/app_base_colors.dart';
import 'home_page.dart';

class AppPage extends StatelessWidget {
  const AppPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FavoriteCubit(context.read())..getFavorites(),
      lazy: false,
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: AppTheme().buildThemeData(
          primarySwatch: AppBaseColors.blue,
          secondarySwatch: AppBaseColors.blue,
          brightness: Brightness.light,
        ),
        darkTheme: AppTheme().buildThemeData(
          primarySwatch: AppBaseColors.blue,
          secondarySwatch: AppBaseColors.blue,
          brightness: Brightness.dark,
        ),
        useInheritedMediaQuery: true,
        scrollBehavior: kReleaseMode ? null : MyCustomScrollBehavior(),
        home: const HomePage(),
      ),
    );
  }
}

/// This is a workaround for emulate drag on desktop with mouse without need to use scroll wheel for debugging purposes.
class MyCustomScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}
