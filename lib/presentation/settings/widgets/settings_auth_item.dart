import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/local_auth/local_auth_cubit.dart';
import '../../../application/local_auth/local_auth_state.dart';
import '../../../domain/core/local_auth/local_auth_enum.dart';
import '../../core/border_size.dart';
import '../../core/spacing/spacing.dart';
import '../../core/theme/theme.dart';
import 'settings_auth_dialog.dart';

class SettingsAuthItem extends StatelessWidget {
  const SettingsAuthItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocalAuthCubit, LocalAuthState>(
      builder: (context, state) {
        late String authenticationType;
        switch (state.localAuthType) {
          case LocalAuthEnum.disabled:
            authenticationType = 'Disabled';
            break;
          case LocalAuthEnum.pin:
            authenticationType = 'PIN';
            break;
          case LocalAuthEnum.fingerprint:
            authenticationType = 'Fingerprint';
            break;
        }

        return Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(BorderSize.medium),
          ),
          child: InkWell(
            onTap: () => showDialog(
              context: context,
              builder: (context) => SettingsAuthDialog(
                authSelected: state.localAuthType,
                hasBiometricsEnabled: state.canUseBiometrics,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 12,
                horizontal: 16,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        authenticationType,
                        style: context.theme.textTheme.subtitle1,
                      ),
                      const Spacing.vertical(Space.small),
                      Text(
                        'Authentication',
                        style: context.theme.textTheme.overline!.copyWith(
                          color: context.colorScheme.onBackground,
                        ),
                      ),
                    ],
                  ),
                  Icon(
                    Icons.security,
                    size: 32,
                    color: AppColors(context.isLightMode).textColor500,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
