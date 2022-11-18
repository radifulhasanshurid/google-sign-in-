import 'package:db_google_signin/auth_server.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Google login'),
        backgroundColor: Colors.white38,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Hello, \nGoogle Sign in",
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            GestureDetector(
              onTap: () {
                AuthService().signInWithGoogle();
              },
              child: const Icon(Icons.security),
            )
          ],
        ),
      ),
    );
  }
}
