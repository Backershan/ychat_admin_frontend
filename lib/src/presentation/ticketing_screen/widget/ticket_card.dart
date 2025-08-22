import 'package:flutter/material.dart';
import 'package:y_chat_admin/src/presentation/ticketing_screen/widget/status_chip.dart';

class TicketCard extends StatelessWidget {
  final String userName;
  final String mobileNumber;
  final String message;
  final String status;
  final String userPhoto;
  final VoidCallback onStatusChange;
  final ValueChanged<String> onReply;

  const TicketCard({
    super.key,
    required this.userName,
    required this.mobileNumber,
    required this.message,
    required this.status,
    required this.userPhoto,
    required this.onStatusChange,
    required this.onReply,
  });

  @override
  Widget build(BuildContext context) {
    final replyController = TextEditingController();
    final isMobile = MediaQuery.of(context).size.width < 600; // breakpoint
    final cardConstraints = isMobile
        ? const BoxConstraints(
      minHeight: 100, // fixed height for mobile
      maxHeight: 150,
      minWidth: double.infinity, // full width
    )
        : const BoxConstraints(); // no restriction on web

    return ConstrainedBox(
      constraints: cardConstraints,
      child: Card(
        elevation: 2,
        margin: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
          child: Column(
            mainAxisSize: MainAxisSize.min, // fit content on web
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// User Info
              Row(
                children: [
                  CircleAvatar(
                    radius: 24,
                    backgroundImage: NetworkImage(userPhoto),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(userName,
                            style: Theme.of(context).textTheme.titleMedium),
                        Text(mobileNumber,
                            style: Theme.of(context).textTheme.bodySmall),
                      ],
                    ),
                  ),
                  StatusChip(
                    status: status,
                    onTap: onStatusChange,
                  ),
                ],
              ),



              /// Ticket Message
              Expanded(
                child: SingleChildScrollView(
                  child: Text(
                    message,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
              ),
              const Divider(),

              /// Reply Section
              Row(
                children: [
                  Flexible(
                    child: TextField(
                      maxLines: 2,
                      controller: replyController,
                      decoration: const InputDecoration(
                        hintText: "Type your reply...",
                        border: OutlineInputBorder(),
                        isDense: true,
                        contentPadding:
                        EdgeInsets.symmetric(vertical: 6, horizontal: 8),
                      ),
                    ),
                  ),
                  const SizedBox(width: 6),
                  ElevatedButton(
                    onPressed: () {
                      if (replyController.text.trim().isNotEmpty) {
                        onReply(replyController.text.trim());
                        replyController.clear();
                      }
                    },
                    child: const Text("Reply"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
