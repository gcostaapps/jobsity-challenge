import 'package:flutter/material.dart';

import '../../border_size.dart';
import '../../spacing/spacing.dart';
import '../../theme/theme.dart';
import '../search_field/search_field.dart';

class HomeView extends StatelessWidget {
  HomeView({
    Key? key,
    required this.hint,
    required this.onSearch,
    required this.gridWidget,
  }) : super(key: key);

  final String hint;
  final Function(String) onSearch;
  final Widget Function(ScrollController) gridWidget;

  final ScrollController controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colorScheme.background,
      body: Scrollbar(
        thumbVisibility: true,
        controller: controller,
        radius: const Radius.circular(BorderSize.circular),
        child: SingleChildScrollView(
          controller: controller,
          padding: const EdgeInsets.only(
            bottom: Space.large2,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacing.vertical(Space.medium2),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: Space.medium),
                child: SearchField(
                  hint: hint,
                  iconData: Icons.search,
                  inputType: TextInputType.text,
                  controller: TextEditingController(),
                  onComplete: onSearch,
                ),
              ),
              const Spacing.vertical(Space.large2),
              gridWidget(controller),
            ],
          ),
        ),
      ),
    );
  }
}
