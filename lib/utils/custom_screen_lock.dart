import 'package:flutter/material.dart';
import 'package:flutter_screen_lock/flutter_screen_lock.dart';

import '../presentation/core/theme/theme.dart';

class CustomScreenLock {
  static Future<void> showSavePin(
      BuildContext context, Function(String) onConfirmed) async {
    screenLock(
      context: context,
      correctString: '',
      canCancel: true,
      title: Text(
        'Enter the PIN you want to use',
        style: context.textTheme.headline5!.copyWith(
          color: AppBaseColors.offWhite,
        ),
      ),
      confirmTitle: Text(
        'Please repeat the PIN',
        style: context.textTheme.headline5!.copyWith(
          color: AppBaseColors.offWhite,
        ),
      ),
      screenLockConfig: ScreenLockConfig(
        backgroundColor: AppBaseColors.ash.withOpacity(0.1),
      ),
      keyPadConfig: KeyPadConfig(
        buttonConfig: StyledInputConfig(
          textStyle: context.textTheme.headline6,
        ),
      ),
      confirmation: true,
      didConfirmed: onConfirmed,
    );
  }

  static Future<void> showScreenLock(
      BuildContext context, Future<bool> Function(String)? onValidate) async {
    screenLock(
      context: context,
      correctString: '',
      canCancel: true,
      title: Text(
        'Please enter the PIN',
        style: context.textTheme.headline5!.copyWith(
          color: AppBaseColors.offWhite,
        ),
      ),
      screenLockConfig: ScreenLockConfig(
        backgroundColor: AppBaseColors.ash.withOpacity(0.1),
      ),
      keyPadConfig: KeyPadConfig(
        buttonConfig: StyledInputConfig(
          textStyle: context.textTheme.headline6,
        ),
      ),
      onValidate: onValidate,
    );
  }
}
