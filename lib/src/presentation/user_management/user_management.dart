import 'package:flutter/material.dart';
import 'package:y_chat_admin/src/presentation/user_management/widgets/search_box.dart';
import 'package:y_chat_admin/src/presentation/user_management/widgets/user_data_table.dart';

class UserManagement extends StatefulWidget {
  const UserManagement({super.key});

  @override
  State<UserManagement> createState() => _UserManagementState();
}

class _UserManagementState extends State<UserManagement> {
  final TextEditingController _searchController = TextEditingController();

  List<Map<String, dynamic>> users = [
    {
      "name": "John Doe",
      "phone": "+91 9876543210",
      "uid": "UID123",
      "status": true,
      "ip": "192.168.1.2"
    },
    {
      "name": "Alice Smith",
      "phone": "+91 9123456789",
      "uid": "UID456",
      "status": false,
      "ip": "192.168.1.5"
    },
  ];

  String searchQuery = "";

  @override
  Widget build(BuildContext context) {
    final filteredUsers = users.where((user) {
      final query = searchQuery.toLowerCase();
      return user["name"].toLowerCase().contains(query) ||
          user["phone"].toLowerCase().contains(query) ||
          user["uid"].toLowerCase().contains(query) ||
          user["ip"].toLowerCase().contains(query);
    }).toList();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SearchBox(
              controller: _searchController,
              onChanged: (value) => setState(() => searchQuery = value),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: UserDataTable(
                users: filteredUsers,
                onToggleStatus: (user) {
                  setState(() {}); // updates state after toggle
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}