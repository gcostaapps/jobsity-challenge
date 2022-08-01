import 'package:flutter/material.dart';

import 'app_bottom_bar_item.dart';
import 'app_bottom_bar_item_model.dart';

class AppBottomBar extends StatefulWidget {
  const AppBottomBar({
    Key? key,
    required this.initialPage,
    required this.items,
    required this.onPageChanged,
  }) : super(key: key);

  final int initialPage;
  final List<AppBottomBarItemModel> items;
  final ValueChanged<int> onPageChanged;

  @override
  State<AppBottomBar> createState() => AppBottomBarState();
}

class AppBottomBarState extends State<AppBottomBar> {
  late int _currentIndex;

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.initialPage;
  }

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color(0x0A000000),
              blurRadius: 24,
              offset: Offset(0, -4),
            )
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
          child: Material(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: List<Widget>.generate(
                widget.items.length,
                (i) => Expanded(
                  child: AppBottomBarItem(
                    enabled: i == _currentIndex,
                    icon: widget.items[i].icon,
                    text: widget.items[i].text,
                    onTap: () => selectBottomBarItem(i),
                  ),
                ),
              ),
            ),
          ),
        ));
  }

  void selectBottomBarItem(int index) {
    setState(() {
      widget.onPageChanged(index);
      _currentIndex = index;
    });
  }
}
