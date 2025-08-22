import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  final String name;
  final String email;
  final String mobile;
  final String profileImage;

  const ProfileCard({
    super.key,
    required this.name,
    required this.email,
    required this.mobile,
    required this.profileImage,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 3,
        margin: const EdgeInsets.all(16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              /// Profile Image
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(profileImage),
              ),
              const SizedBox(height: 16),

              /// Name
              Text(
                name,
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 8),

              /// Email
              Text(
                email,
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 4),

              /// Mobile Number
              Text(
                mobile,
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
