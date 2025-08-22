import 'package:flutter/material.dart';

import 'glass_icon_button.dart';

class GlassIconButtonList extends StatelessWidget {

  final List<Map<String, dynamic>> buttons;

  const GlassIconButtonList({super.key, required this.buttons});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: buttons.map((btn) {
        return GlassIconButton(
          icon: btn['icon'],
          tooltip: btn['tooltip'],
          onPressed: btn['onPressed'],
        );
      }).toList(),
    );
  }
}
