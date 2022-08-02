// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/local_auth/local_auth_cubit.dart';
import '../../../domain/core/local_auth/local_auth_enum.dart';
import '../../utils/custom_screen_lock.dart';
import '../../core/border_size.dart';
import '../../core/spacing/space.dart';
import '../../core/theme/theme.dart';

class SettingsAuthDialog extends StatelessWidget {
  const SettingsAuthDialog({
    Key? key,
    required this.hasBiometricsEnabled,
    required this.authSelected,
  }) : super(key: key);

  final bool hasBiometricsEnabled;
  final LocalAuthEnum authSelected;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Space.medium),
        child: Material(
          color: context.colorScheme.surface,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(BorderSize.medium),
          ),
          child: Container(
            width: MediaQuery.of(context).size.width - Space.large,
            padding: const EdgeInsets.symmetric(vertical: Space.medium),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                RadioListTile(
                  value: LocalAuthEnum.disabled,
                  groupValue: authSelected,
                  onChanged: (v) =>
                      selectAuthType(context, LocalAuthEnum.disabled),
                  title: const Text('Disabled'),
                ),
                RadioListTile(
                  value: LocalAuthEnum.pin,
                  groupValue: authSelected,
                  onChanged: (v) => CustomScreenLock.showSavePin(
                    context,
                    (pin) => selectAuthType(
                      context,
                      LocalAuthEnum.pin,
                      pincode: pin,
                    ),
                  ),
                  title: const Text('PIN'),
                ),
                if (hasBiometricsEnabled)
                  RadioListTile(
                    value: LocalAuthEnum.fingerprint,
                    groupValue: authSelected,
                    onChanged: (v) =>
                        selectAuthType(context, LocalAuthEnum.fingerprint),
                    title: const Text('Fingerprint'),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> selectAuthType(BuildContext context, LocalAuthEnum authType,
      {String? pincode}) async {
    context.read<LocalAuthCubit>().setAuthType(authType, pinCode: pincode);
    if (pincode != null) {
      Navigator.pop(context);
    }
    Navigator.pop(context);
  }
}
