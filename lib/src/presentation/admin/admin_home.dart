import 'package:flutter/material.dart';
import 'package:y_chat_admin/src/presentation/dashboard/dashboard_screen.dart';
import 'package:y_chat_admin/src/presentation/settings/settings_screen.dart';
import 'package:y_chat_admin/src/presentation/user_management/user_management.dart';

import '../app_management/app_management.dart';
import '../profile_screen/profile_screen.dart';

class AdminHome extends StatefulWidget {
  const AdminHome({super.key});

  @override
  State<AdminHome> createState() => _AdminHomeState();
}

class _AdminHomeState extends State<AdminHome> {
  int _selectedIndex = 0;
  final List<Widget> _pages = const [
    DashboardScreen(),
    UserManagement(),
    AppManagement(),
    SettingsScreen(),
    ProfileScreen(),
  ];

  final List<String> _titles = [
    "Dashboard",
    "User Management",
    "App Management",
    "Settings",
    "Profile",
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final bool isMobile = MediaQuery.of(context).size.width < 600;

    return Scaffold(
      appBar: AppBar(title: Text(_titles[_selectedIndex])),
      body: isMobile
          ? _pages[_selectedIndex]
          : Row(
              children: [
                // Side Navigation for Desktop/Web
                NavigationRail(
                  selectedIndex: _selectedIndex,
                  onDestinationSelected: (index) {
                    setState(() {
                      _selectedIndex = index;
                    });
                  },
                  labelType: NavigationRailLabelType.all,
                  destinations: const [
                    NavigationRailDestination(
                      icon: Icon(Icons.dashboard_outlined),
                      selectedIcon: Icon(Icons.dashboard),
                      label: Text("Dashboard"),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.people_outline),
                      selectedIcon: Icon(Icons.people),
                      label: Text("Users"),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.apps_outlined),
                      selectedIcon: Icon(Icons.apps),
                      label: Text("App Mgmt"),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.settings_outlined),
                      selectedIcon: Icon(Icons.settings),
                      label: Text("Settings"),
                    ),NavigationRailDestination(
                      icon: Icon(Icons.person),
                      selectedIcon: Icon(Icons.person),
                      label: Text("Profile"),
                    ),
                  ],
                ),
                Expanded(child: _pages[_selectedIndex]),
              ],
            ),

      bottomNavigationBar: isMobile
          ? NavigationBar(
              selectedIndex: _selectedIndex,
              onDestinationSelected: _onItemTapped,
              destinations: const [
                NavigationDestination(
                  icon: Icon(Icons.dashboard_outlined),
                  selectedIcon: Icon(Icons.dashboard),
                  label: "Dashboard",
                ),
                NavigationDestination(
                  icon: Icon(Icons.people_outline),
                  selectedIcon: Icon(Icons.people),
                  label: "Users",
                ),
                NavigationDestination(
                  icon: Icon(Icons.apps_outlined),
                  selectedIcon: Icon(Icons.apps),
                  label: "App Mgmt",
                ),
                NavigationDestination(
                  icon: Icon(Icons.settings_outlined),
                  selectedIcon: Icon(Icons.settings),
                  label: "Settings",
                ),NavigationDestination(
                  icon: Icon(Icons.person),
                  selectedIcon: Icon(Icons.person),
                  label: "Profile",
                ),
              ],
            )
          : null,
    );
  }
}
