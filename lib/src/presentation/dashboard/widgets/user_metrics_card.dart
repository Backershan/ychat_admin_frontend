import 'package:flutter/material.dart';

class UserMetricsCard extends StatelessWidget {
  final String title;
  final String value;
  final IconData icon;
  final Color color;

  const UserMetricsCard({
    super.key,
    required this.title,
    required this.value,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        bool isWide = constraints.maxWidth > 400; // desktop/tablet vs mobile

        return Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: EdgeInsets.all(isWide ? 20.0 : 12.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: isWide ? 28 : 20,
                  backgroundColor: color.withOpacity(0.15),
                  child: Icon(icon, color: color, size: isWide ? 28 : 20),
                ),
                SizedBox(width: isWide ? 20 : 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        title,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontSize: isWide ? 16 : 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        value,
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontSize: isWide ? 22 : 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
