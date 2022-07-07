import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:medical_app/configs/colors.dart';

class CustomTabBar extends StatelessWidget {
  final List<IconData> icons;
  final int selectedIndex;
  final Function(int) onTap;
  const CustomTabBar(
      {Key? key,
      required this.icons,
      required this.selectedIndex,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicatorPadding: const EdgeInsets.symmetric(horizontal: 15.0),
      indicator: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.transparent,
            width: 3.0,
          ),
        ),
      ),
      tabs: icons
          .asMap()
          .map((i, e) => MapEntry(
                i,
                Tab(
                  icon: Icon(
                    e,
                    color:
                        i == selectedIndex ? Palette.primary : Colors.grey[400],
                  ),
                ),
              ))
          .values
          .toList(),
      onTap: onTap,
    );
  }
}
