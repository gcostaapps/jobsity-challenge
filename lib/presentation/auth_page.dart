import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../application/local_auth/local_auth_cubit.dart';
import '../domain/core/local_auth/local_auth_enum.dart';
import 'utils/custom_screen_lock.dart';
import 'core/spacing/spacing.dart';
import 'core/theme/theme.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authType =
        context.select((LocalAuthCubit c) => c.state.localAuthType);
    return Container(
      color: context.colorScheme.background,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: context.colorScheme.background,
          body: Center(
            child: Column(
              children: [
                Spacing.vertical(
                  MediaQuery.of(context).size.height * 0.2,
                ),
                Icon(
                  Icons.security,
                  color: context.colorScheme.onBackground.withOpacity(0.5),
                  size: 160,
                ),
                const Spacing.vertical(Space.medium),
                Text(
                  'Please authenticate to access the app',
                  style: context.textTheme.bodyText2!.copyWith(
                    color: context.colorScheme.onBackground,
                  ),
                  textAlign: TextAlign.center,
                ),
                const Spacing.vertical(Space.medium),
                SizedBox(
                  height: 48,
                  child: ElevatedButton(
                    onPressed: () => authType == LocalAuthEnum.fingerprint
                        ? context
                            .read<LocalAuthCubit>()
                            .authenticateWithFingerPrint()
                        : CustomScreenLock.showScreenLock(
                            context,
                            (pin) async => context
                                .read<LocalAuthCubit>()
                                .authenticateWithPinCode(pin),
                          ),
                    child: const Text('Authenticate'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
