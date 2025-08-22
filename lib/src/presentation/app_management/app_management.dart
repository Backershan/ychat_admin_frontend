import 'package:flutter/material.dart';
import 'package:y_chat_admin/src/presentation/app_management/widget/app_card.dart';

class AppManagement extends StatefulWidget {
  const AppManagement({super.key});

  @override
  State<AppManagement> createState() => _AppManagementState();
}

class _AppManagementState extends State<AppManagement> {
  List<Map<String, String>> apps = [
    {'name': 'YChat', 'description': 'Connect with friends & family'},
    {'name': 'App2', 'description': 'Second app description'},
    {'name': 'App3', 'description': 'Third app description'},
  ];

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _descController = TextEditingController();

  void _addApp() {
    final name = _nameController.text.trim();
    final desc = _descController.text.trim();
    if (name.isNotEmpty && desc.isNotEmpty) {
      setState(() {
        apps.add({'name': name, 'description': desc});
      });
      _nameController.clear();
      _descController.clear();
      Navigator.of(context).pop();
    }
  }

  void _removeApp(int index) {
    setState(() {
      apps.removeAt(index);
    });
  }

  void _showAddAppDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Add New App'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(labelText: 'App Name'),
            ),
            TextField(
              controller: _descController,
              decoration: const InputDecoration(labelText: 'Description'),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: _addApp,
            child: const Text('Add'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          // Determine number of columns based on width
          int crossAxisCount = constraints.maxWidth < 600
              ? 1
              : constraints.maxWidth < 1200
              ? 2
              : 4;

          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: apps.isEmpty
                ? const Center(child: Text('No apps added yet'))
                : GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: crossAxisCount,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                childAspectRatio: 2.5,
              ),
              itemCount: apps.length,
              itemBuilder: (context, index) {
                final app = apps[index];
                return AppCard(
                  appName: app['name']!,
                  appDescription: app['description']!,
                  onRemove: () => _removeApp(index),
                );
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _showAddAppDialog,
        child:  Icon(Icons.add),
        tooltip: 'Add New App',
      ),
    );
  }
}