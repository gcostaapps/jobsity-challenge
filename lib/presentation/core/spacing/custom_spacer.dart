import 'package:flutter/material.dart';
import 'spacer_direction_enum.dart';

import 'custom_space.dart';

export 'custom_space.dart';

class CustomSpacer extends StatelessWidget {
  const CustomSpacer._({
    Key? key,
    required this.space,
    required this.direction,
  }) : super(key: key);

  factory CustomSpacer.vertical({
    required CustomSpace space,
  }) {
    return CustomSpacer._(
      direction: SpacerDirectionEnum.vertical,
      space: space,
    );
  }

  factory CustomSpacer.horizontal({
    required CustomSpace space,
  }) {
    return CustomSpacer._(
      direction: SpacerDirectionEnum.horizontal,
      space: space,
    );
  }

  final CustomSpace space;
  final SpacerDirectionEnum direction;

  @override
  Widget build(BuildContext context) {
    switch (direction) {
      case SpacerDirectionEnum.vertical:
        return SizedBox(height: space.size);
      case SpacerDirectionEnum.horizontal:
        return SizedBox(width: space.size);
    }
  }
}
