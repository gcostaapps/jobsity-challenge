import 'package:flutter/material.dart';

import 'app_base_colors.dart';

class AppColors {
  final bool isLight;

  AppColors(this.isLight);

  List<BoxShadow> getShadow(Color? color) => [
        if (isLight)
          BoxShadow(
            color: (color ?? AppBaseColors.lightTextColors.shade100)
                .withOpacity(isLight ? 0.25 : 0.05),
            blurRadius: 10,
            offset: const Offset(0, 6),
          ),
      ];

  Color get surfaceColor50 => isLight
      ? AppBaseColors.lightSurfaceColors.shade50
      : AppBaseColors.darkSurfaceColors.shade50;

  Color get surfaceColor100 => isLight
      ? AppBaseColors.lightSurfaceColors.shade100
      : AppBaseColors.darkSurfaceColors.shade100;

  Color get surfaceColor200 => isLight
      ? AppBaseColors.lightSurfaceColors.shade200
      : AppBaseColors.darkSurfaceColors.shade200;

  Color get textColor50 => isLight
      ? AppBaseColors.lightTextColors.shade50
      : AppBaseColors.darkTextColors.shade50;

  Color get textColor100 => isLight
      ? AppBaseColors.lightTextColors.shade100
      : AppBaseColors.darkTextColors.shade100;

  Color get textColor200 => isLight
      ? AppBaseColors.lightTextColors.shade200
      : AppBaseColors.darkTextColors.shade200;

  Color get textColor300 => isLight
      ? AppBaseColors.lightTextColors.shade300
      : AppBaseColors.darkTextColors.shade300;

  Color get textColor400 => isLight
      ? AppBaseColors.lightTextColors.shade400
      : AppBaseColors.darkTextColors.shade400;

  Color get textColor500 => isLight
      ? AppBaseColors.lightTextColors.shade500
      : AppBaseColors.darkTextColors.shade500;

  Color get textColor600 => isLight
      ? AppBaseColors.lightTextColors.shade600
      : AppBaseColors.darkTextColors.shade600;

  Color get textColor700 => isLight
      ? AppBaseColors.lightTextColors.shade700
      : AppBaseColors.darkTextColors.shade700;

  Color get textColor800 => isLight
      ? AppBaseColors.lightTextColors.shade800
      : AppBaseColors.darkTextColors.shade800;

  Color get errorColor => isLight
      ? AppBaseColors.errorColor.shade300
      : AppBaseColors.errorColor.shade200;

  Color get successColor => isLight
      ? AppBaseColors.successColor.shade300
      : AppBaseColors.successColor.shade200;

  Color get warningColor => isLight
      ? AppBaseColors.warningColor.shade300
      : AppBaseColors.warningColor.shade200;
}
