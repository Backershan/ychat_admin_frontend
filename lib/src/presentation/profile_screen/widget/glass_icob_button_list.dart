import 'package:flutter/material.dart';

class GlassIconButtonList extends StatelessWidget {
  final List<Map<String, dynamic>> buttons;

  const GlassIconButtonList({required this.buttons});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: buttons.map((button) {
        return IconButton(
          icon: Icon(button['icon']),
          tooltip: button['tooltip'],
          onPressed: button['onPressed'],
        );
      }).toList(),
    );
  }
}
