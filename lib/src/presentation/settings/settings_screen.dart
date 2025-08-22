import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:y_chat_admin/src/presentation/settings/widget/screen_toggle.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  Map<String, bool> settings = {
    'screenSharing': false,
    'appInApp': false,
    'pushNotifications': true,
  };

  @override
  void initState() {
    super.initState();
    _loadSettings();
  }

  Future<void> _loadSettings() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      settings.updateAll((key, value) => prefs.getBool(key) ?? value);
    });
  }

  Future<void> _updateSetting(String key, bool value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(key, value);
    setState(() => settings[key] = value);
  }

  @override
  Widget build(BuildContext context) {
    // Responsive width for web
    final width = MediaQuery.of(context).size.width > 600
        ? 600.0
        : double.infinity;

    return Scaffold(
      body: Center(
        child: Container(
          width: width,
          child: ListView(
            children: [
              SettingsToggle(
                title: 'Enable Screen Sharing',
                subtitle: 'Share the entire app screen',
                value: settings['screenSharing']!,
                onChanged: (val) => _updateSetting('screenSharing', val),
              ),
              const Divider(),
              SettingsToggle(
                title: 'Enable App-in-App Mode',
                subtitle: 'Run the app in floating window',
                value: settings['appInApp']!,
                onChanged: (val) => _updateSetting('appInApp', val),
              ),
              const Divider(),
              SettingsToggle(
                title: 'Push Notifications',
                subtitle: 'Receive app notifications',
                value: settings['pushNotifications']!,
                onChanged: (val) => _updateSetting('pushNotifications', val),
              ),
            ],
          ),
        ),
      ),
    );
  }
}