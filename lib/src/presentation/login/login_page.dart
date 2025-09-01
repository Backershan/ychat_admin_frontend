import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:y_chat_admin/src/presentation/login/widgets/custom_button.dart';
import 'package:y_chat_admin/src/presentation/login/widgets/custom_text_field.dart';

import '../admin/admin_home.dart';
class AdminLoginPage extends StatefulWidget {
  @override
  _AdminLoginPageState createState() => _AdminLoginPageState();
}

class _AdminLoginPageState extends State<AdminLoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _login() {
    String username = _usernameController.text;
    String password = _passwordController.text;

    // Add your login logic here, like API calls or validation
    if (username.isNotEmpty && password.isNotEmpty) {
      // Successful login
      print('Logging in as $username');

      // Navigate to the Admin Home Page
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => AdminHome()),
      );
    } else {
      // Error handling
      print('Please fill in all fields');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please fill in all fields')),
      );
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Admin"),centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 50.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // App title or logo could be added here (optional)
            Text(
              'Admin Panel Login',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 40.0),
            // Username field
            CustomTextField(
              label: 'Username',
              controller: _usernameController,
              keyboardType: TextInputType.text,
            ),
            // Password field
            CustomTextField(
              label: 'Password',
              controller: _passwordController,
              obscureText: true,
              keyboardType: TextInputType.visiblePassword,
            ),
            // Login button
            CustomButton(
              label: 'Login',
              onPressed: _login,
            ),
          ],
        ),
      ),
    );
  }
}