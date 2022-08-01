import 'package:flutter/material.dart';
import 'spacing_direction_enum.dart';

export 'space.dart';

class Spacing extends StatelessWidget {
  const Spacing.vertical(
    this.space, {
    Key? key,
    this.direction = SpacingDirectionEnum.vertical,
  }) : super(key: key);

  const Spacing.horizontal(
    this.space, {
    Key? key,
    this.direction = SpacingDirectionEnum.horizontal,
  }) : super(key: key);

  final double space;
  final SpacingDirectionEnum direction;

  @override
  Widget build(BuildContext context) {
    switch (direction) {
      case SpacingDirectionEnum.vertical:
        return SizedBox(height: space);
      case SpacingDirectionEnum.horizontal:
        return SizedBox(width: space);
    }
  }
}
