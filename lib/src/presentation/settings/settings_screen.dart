import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: const [
        SwitchListTile(
          value: true,
          onChanged: null,
          title: Text("Dark Mode"),
        ),
        ListTile(
          leading: Icon(Icons.language),
          title: Text("Language"),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
        ListTile(
          leading: Icon(Icons.security),
          title: Text("Security Settings"),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
      ],
    );
  }
}