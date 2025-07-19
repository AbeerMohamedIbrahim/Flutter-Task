import 'package:flutter/material.dart';
import 'SignUp.dart';

class LoginPage extends StatelessWidget {
  final String title;

  const LoginPage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Welcome Back',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Text('Enter your credentials to login.'),
            const SizedBox(height: 40),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Username',
                filled: true,
                fillColor: Colors.white30,
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.person),

              ),
            ),
            const SizedBox(height: 20),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Password',
                filled: true,
                fillColor: Colors.white30,
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.lock),

              ),
              obscureText: true,

            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              ),
              child: const Text(
                'Login',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: Colors.white),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Forgot password?', style: TextStyle(color: Colors.purple)),
            ),
            const SizedBox(height: 20),
            const Text("Don't have an account?"),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SignUpScreen(title: 'Sign Up'),
                  ),
                );
              },
              child: const Text('Sign Up', style: TextStyle(color: Colors.purple)),
            ),
          ],
        ),
      ),
    );
  }
}
