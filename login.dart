import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Icon(Icons.volunteer_activism, size: 100),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(labelText: 'Password'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: Text("Login"),
            ),
            TextButton(
              onPressed: () {},
              child: Text("Forgot Password?"),
            ),
            OutlinedButton(
              onPressed: () {},
              child: Text("Sign Up"),
            ),
          ],
        ),
      ),
    );
  }
}
