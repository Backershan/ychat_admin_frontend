import 'package:flutter/material.dart';
import 'package:y_chat_admin/src/presentation/ticketing_screen/widget/ticket_card.dart';

class TicketingScreen extends StatefulWidget {
  const TicketingScreen({super.key});

  @override
  State<TicketingScreen> createState() => _TicketingScreenState();
}

class _TicketingScreenState extends State<TicketingScreen> {
  List<Map<String, dynamic>> tickets = [
    {
      "userName": "John Doe",
      "mobile": "+91 9876543210",
      "photo": "https://i.pravatar.cc/150?img=1",
      "message": "App is crashing when I try to open settings.",
      "status": "Pending",
    },
    {
      "userName": "Jane Smith",
      "mobile": "+91 9123456789",
      "photo": "https://i.pravatar.cc/150?img=2",
      "message": "I am not receiving notifications properly.",
      "status": "Completed",
    },
  ];

  void _toggleStatus(int index) {
    setState(() {
      tickets[index]["status"] =
      tickets[index]["status"] == "Pending" ? "Completed" : "Pending";
    });
  }

  void _sendReply(int index, String reply) {
    debugPrint("Reply to ${tickets[index]["userName"]}: $reply");
    // TODO: send reply to backend or user
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("Reply sent to ${tickets[index]["userName"]}")),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          int crossAxisCount = constraints.maxWidth < 600
              ? 1 // Mobile
              : constraints.maxWidth < 1200
              ? 2 // Tablet
              : 3; // Web/Desktop

          return GridView.builder(
            padding: const EdgeInsets.all(12),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: crossAxisCount,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              childAspectRatio: 0.9,
            ),
            itemCount: tickets.length,
            itemBuilder: (context, index) {
              final ticket = tickets[index];
              return TicketCard(
                userName: ticket["userName"],
                mobileNumber: ticket["mobile"],
                message: ticket["message"],
                status: ticket["status"],
                userPhoto: ticket["photo"],
                onStatusChange: () => _toggleStatus(index),
                onReply: (reply) => _sendReply(index, reply),
              );
            },
          );
        },
      ),
    );
  }
}