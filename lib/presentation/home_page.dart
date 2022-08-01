import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

import '../domain/enums/app_pages_enum.dart';
import 'core/theme/app_theme.dart';
import 'core/widgets/bottom_bar/app_bottom_bar.dart';
import 'core/widgets/bottom_bar/app_bottom_bar_item_model.dart';
import 'people/people_home_page.dart';
import 'series/series_home_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AppPagesEnum selectedPage = AppPagesEnum.series;
  @override
  Widget build(BuildContext context) {
    late Widget child;

    switch (selectedPage) {
      case AppPagesEnum.people:
        child = const PeopleHomePage();

        break;
      case AppPagesEnum.series:
        child = const SeriesHomePage();
        break;
      case AppPagesEnum.favorites:
        child = Container(color: Colors.yellow);
        break;
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
                AppBottomBarItemModel(text: 'Favorites', icon: Icons.favorite),
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
          child: PageTransitionSwitcher(
            layoutBuilder: (entries) => Stack(
              alignment: Alignment.topCenter,
              children: entries,
            ),
            reverse: false,
            transitionBuilder: (child, primaryAnimation, secondaryAnimation) =>
                FadeThroughTransition(
              fillColor: Colors.transparent,
              animation: primaryAnimation,
              secondaryAnimation: secondaryAnimation,
              child: child,
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}
