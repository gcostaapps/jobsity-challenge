import 'package:flutter/material.dart';

import '../../spacing/spacing.dart';
import '../../theme/theme.dart';

class AppBottomBarItem extends StatelessWidget {
  const AppBottomBarItem({
    Key? key,
    required this.enabled,
    required this.onTap,
    required this.icon,
    required this.text,
  }) : super(key: key);

  final bool enabled;
  final VoidCallback onTap;
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return InkWell(
      onTap: onTap,
      child: Container(
        height: kBottomNavigationBarHeight,
        color: Colors.transparent,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 20,
              color: enabled
                  ? theme.colorScheme.onSurface
                  : AppBaseColors.placeholder,
            ),
            const Spacing.vertical(Space.extraSmall2),
            Text(
              text,
              style: theme.textTheme.caption!.copyWith(
                fontWeight: FontWeight.w500,
                color: enabled
                    ? theme.colorScheme.onSurface
                    : AppBaseColors.placeholder,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
