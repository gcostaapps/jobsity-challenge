import 'package:flutter/material.dart';

import '../core/spacing/spacing.dart';
import '../core/theme/theme.dart';
import 'widgets/settings_auth_item.dart';

class SettingsHomePage extends StatelessWidget {
  const SettingsHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.colorScheme.background,
      width: double.infinity,
      child: Material(
        color: context.colorScheme.background,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: Space.medium),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacing.vertical(Space.medium2),
              Text(
                'Security',
                style: context.textTheme.subtitle2,
              ),
              const Spacing.vertical(Space.small),
              const SettingsAuthItem(),
            ],
          ),
        ),
      ),
    );
  }
}
