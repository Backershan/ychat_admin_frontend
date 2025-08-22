import 'package:flutter/material.dart';
import 'package:y_chat_admin/src/presentation/profile_screen/widget/glass_icob_button_list.dart';
import 'package:y_chat_admin/src/presentation/profile_screen/widget/profile_card.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 600;

    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: isMobile ? 16.0 : 150.0,
            vertical: isMobile ? 16.0 : 100.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              /// Profile Card
              SizedBox(
                width: double.infinity,
                height: 400,
                child: const ProfileCard(
                  name: "John Doe",
                  email: "johndoe@example.com",
                  mobile: "+91 9876543210",
                  profileImage: "https://i.pravatar.cc/150?img=3",
                ),
              ),

              const SizedBox(height: 20),

              /// Action Buttons
         GlassIconButtonList(
                buttons: [
                  {
                    'icon': Icons.edit,
                    'tooltip': "Edit Profile",
                    'onPressed': () {
                      // handle edit
                    },
                  },
                  {
                    'icon': Icons.password,
                    'tooltip': "Change Password",
                    'onPressed': () {
                      // handle password
                    },
                  },
                  {
                    'icon': Icons.logout,
                    'tooltip': "Logout",
                    'onPressed': () {
                      // handle logout
                    },
                  },
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
