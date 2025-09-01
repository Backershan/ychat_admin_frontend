import 'package:flutter/material.dart';

class ChangePasswordDialog extends StatefulWidget {
  @override
  _ChangePasswordDialogState createState() => _ChangePasswordDialogState();
}

class _ChangePasswordDialogState extends State<ChangePasswordDialog> {
  final TextEditingController _otpController = TextEditingController();
  final TextEditingController _newPasswordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Change Password'),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          // OTP Field
          TextField(
            controller: _otpController,
            decoration: InputDecoration(labelText: 'Enter OTP'),
            keyboardType: TextInputType.number,
          ),
          // New Password Field
          TextField(
            controller: _newPasswordController,
            decoration: InputDecoration(labelText: 'New Password'),
            obscureText: true,
          ),
          // Confirm Password Field
          TextField(
            controller: _confirmPasswordController,
            decoration: InputDecoration(labelText: 'Confirm Password'),
            obscureText: true,
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () {
            if (_newPasswordController.text == _confirmPasswordController.text) {
              // Update password logic here
              print('Password updated');
              Navigator.pop(context);
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Passwords do not match')),
              );
            }
          },
          child: Text('Submit'),
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
