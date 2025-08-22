import 'package:flutter/material.dart';

class StatusChip extends StatelessWidget {
  final String status;
  final VoidCallback onTap;

  const StatusChip({super.key, required this.status, required this.onTap});

  Color _getColor() {
    switch (status.toLowerCase()) {
      case 'completed':
        return Colors.green;
      case 'pending':
        return Colors.orange;
      default:
        return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Chip(
        label: Text(
          status,
          style: const TextStyle(color: Colors.white),
        ),
        backgroundColor: _getColor(),
      ),
    );
  }
}