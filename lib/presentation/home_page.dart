import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../application/local_auth/local_auth_cubit.dart';
import '../application/local_auth/local_auth_state.dart';
import '../domain/core/local_auth/local_auth_enum.dart';
import '../domain/enums/app_pages_enum.dart';
import 'auth_page.dart';
import 'core/theme/app_theme.dart';
import 'core/widgets/bottom_bar/app_bottom_bar.dart';
import 'core/widgets/bottom_bar/app_bottom_bar_item_model.dart';
import 'favorites/favorites_home_page.dart';
import 'people/people_home_page.dart';
import 'series/series_home_page.dart';
import 'settings/settings_home_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AppPagesEnum selectedPage = AppPagesEnum.series;
  @override
  Widget build(BuildContext context) {
    late int index;

    final List<Widget> pages = [
      const PeopleHomePage(key: PageStorageKey('PeopleHomePage')),
      const SeriesHomePage(key: PageStorageKey('SeriesHomePage')),
      FavoritesHomePage(key: const PageStorageKey('FavoritesHomePage')),
      const SettingsHomePage(key: PageStorageKey('SettingsHomePage')),
    ];

    switch (selectedPage) {
      case AppPagesEnum.people:
        index = 0;
        break;
      case AppPagesEnum.series:
        index = 1;
        break;
      case AppPagesEnum.favorites:
        index = 2;
        break;
      case AppPagesEnum.settings:
        index = 3;
        break;
    }

    return BlocBuilder<LocalAuthCubit, LocalAuthState>(
      builder: (context, state) {
        if (state.localAuthType != LocalAuthEnum.disabled &&
            !state.isAuthenticated) {
          return const AuthPage();
        }

        return Container(
          color: context.colorScheme.background,
          child: Scaffold(
            backgroundColor: context.colorScheme.background,
            bottomNavigationBar: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                AppBottomBar(
                  initialPage: selectedPage.index,
                  items: [
                    AppBottomBarItemModel(text: 'People', icon: Icons.people),
                    AppBottomBarItemModel(text: 'Series', icon: Icons.tv),
                    AppBottomBarItemModel(
                        text: 'Favorites', icon: Icons.favorite),
                    AppBottomBarItemModel(
                        text: 'Settings', icon: Icons.settings),
                  ],
                  onPageChanged: (i) =>
                      setState(() => selectedPage = AppPagesEnum.values[i]),
                ),
                Container(
                  color: context.colorScheme.surface,
                  height: MediaQuery.of(context).padding.bottom,
                ),
              ],
            ),
            body: SafeArea(
              child: IndexedStack(
                index: index,
                children: pages,
              ),
            ),
          ),
        );
      },
    );
  }
}
