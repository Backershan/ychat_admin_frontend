import 'package:flutter/material.dart';

class AppManagement extends StatelessWidget {
  const AppManagement({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: const EdgeInsets.all(16),
      crossAxisCount: 2,
      children: const [
        Card(
          child: Center(child: Text("Manage Products")),
        ),
        Card(
          child: Center(child: Text("Manage Orders")),
        ),
        Card(
          child: Center(child: Text("Analytics")),
        ),
        Card(
          child: Center(child: Text("Push Notifications")),
        ),
      ],
    );
  }
}