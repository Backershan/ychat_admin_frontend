import 'package:flutter/material.dart';
import 'package:y_chat_admin/src/presentation/login/login_page.dart';
import 'package:y_chat_admin/src/presentation/profile_screen/widget/change_password_dialog.dart';
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
                      _editProfile(context);
                    },
                  },
                  {
                    'icon': Icons.password,
                    'tooltip': "Change Password",
                    'onPressed': () {
                      _changePassword(context);
                    },
                  },
                  {
                    'icon': Icons.logout,
                    'tooltip': "Logout",
                    'onPressed': () {
                      _showLogoutDialog(context);
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
  void _showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Are you sure you want to log out?'),
          actions: [
            TextButton(
              onPressed: () {
                // Handle logout
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => AdminLoginPage()),
                      (route) => false,
                );
              },
              child: Text('Yes'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context); // Stay on the profile screen
              },
              child: Text('No'),
            ),
          ],
        );
      },
    );
  }

  // Edit Profile Page
  void _editProfile(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return EditProfileDialog();
      },
    );
  }

  // Change Password Page
  void _changePassword(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return ChangePasswordDialog();
      },
    );
  }
}

// Edit Profile Dialog with Name Field
class EditProfileDialog extends StatefulWidget {
  @override
  _EditProfileDialogState createState() => _EditProfileDialogState();
}

class _EditProfileDialogState extends State<EditProfileDialog> {
  final TextEditingController _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Edit Profile'),
      content: TextField(
        controller: _nameController,
        decoration: InputDecoration(labelText: 'Name'),
      ),
      actions: [
        TextButton(
          onPressed: () {
            // Update name
            print('Updated name: ${_nameController.text}');
            Navigator.pop(context);
          },
          child: Text('Save'),
        ),
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Cancel'),
        ),
      ],
    );
  }

}
