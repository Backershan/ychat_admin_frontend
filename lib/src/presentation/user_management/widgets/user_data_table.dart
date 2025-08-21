import 'package:flutter/material.dart';

/// 📋 Reusable DataTable for Users
class UserDataTable extends StatefulWidget {
  final List<Map<String, dynamic>> users;
  final ValueChanged<Map<String, dynamic>> onToggleStatus;

  const UserDataTable({
    super.key,
    required this.users,
    required this.onToggleStatus,
  });

  @override
  State<UserDataTable> createState() => _UserDataTableState();
}

class _UserDataTableState extends State<UserDataTable> {
  /// Keeps track of which IPs are visible
  final Set<int> _visibleIPs = {};
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        bool isMobile = constraints.maxWidth < 600;

        if (isMobile) {
          // 📱 Mobile → Show Cards
          return ListView.builder(
            shrinkWrap: true,
            itemCount: widget.users.length,
            itemBuilder: (context, index) {
              final user = widget.users[index];
              final isVisible = _visibleIPs.contains(index);

              return Card(
                margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                elevation: 3,
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildRow("Name", user["name"]),
                      _buildRow("Phone", user["phone"]),
                      _buildRow("UID", user["uid"]),
                      _buildRow(
                        "Status",
                        user["status"] ? "Active" : "Suspended",
                        color: user["status"] ? Colors.green : Colors.red,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Action",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Switch(
                            value: user["status"],
                            onChanged: (value) {
                              widget.onToggleStatus(user..["status"] = value);
                            },
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            if (isVisible) {
                              _visibleIPs.remove(index);
                            } else {
                              _visibleIPs.add(index);
                            }
                          });
                        },

                        child: _buildRow("IP", isVisible ? user["ip"] : "View"),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        } else {
          // 💻 Web / Desktop → Show Table
          return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(
              columnSpacing: 250,
              border: TableBorder.all(color: Colors.grey.shade300),
              headingRowColor: WidgetStateProperty.all(Colors.blueGrey.shade50),
              columns: const [
                DataColumn(label: Text("Name")),
                DataColumn(label: Text("Phone")),
                DataColumn(label: Text("UID")),
                DataColumn(label: Text("Status")),
                DataColumn(label: Text("Action")),
                DataColumn(label: Text("IP Address")),
              ],
              rows: List.generate(widget.users.length, (index) {
                final user = widget.users[index];
                final isVisible = _visibleIPs.contains(index);
                return DataRow(
                  cells: [
                    DataCell(Text(user["name"])),
                    DataCell(Text(user["phone"])),
                    DataCell(Text(user["uid"])),
                    DataCell(
                      Text(
                        user["status"] ? "Active" : "Suspended",
                        style: TextStyle(
                          color: user["status"] ? Colors.green : Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    DataCell(
                      Switch(
                        value: user["status"],
                        onChanged: (value) {
                          widget.onToggleStatus(user..["status"] = value);
                        },
                      ),
                    ),
                    DataCell(
                      TextButton(
                        onPressed: () {
                          setState(() {
                            if (isVisible) {
                              _visibleIPs.remove(index);
                            } else {
                              _visibleIPs.add(index);
                            }
                          });
                        },
                        child: Text(isVisible ? user["ip"] : "View"),
                      ),
                    ),
                  ],
                );
              }).toList(),
            ),
          );
        }
      },
    );
  }

  /// 🔹 Helper for displaying row in mobile card
  Widget _buildRow(String label, String value, {Color? color}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
          Text(value, style: TextStyle(color: color ?? Colors.black87)),
        ],
      ),
    );
  }
}
