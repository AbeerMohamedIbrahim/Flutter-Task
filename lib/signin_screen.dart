import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
  height: 150,
  decoration: BoxDecoration(
    color: Colors.pinkAccent,
    borderRadius: BorderRadius.vertical(bottom: Radius.circular(60)),
  ),
  child: Align(
    alignment: Alignment.topLeft,
    child: IconButton(
      icon: Icon(Icons.arrow_back, color: Colors.white),
      onPressed: () {
        Navigator.pop(context);
      },
    ),
  ),
),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: ListView(
                children: [
                  Text('Sign in', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
                  SizedBox(height: 16),
                  TextField(
                    controller: emailController,
                    decoration: InputDecoration(labelText: 'Email', prefixIcon: Icon(Icons.email)),
                  ),
                  SizedBox(height: 16),
                  TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration(labelText: 'Password', prefixIcon: Icon(Icons.lock)),
                  ),
                  Row(
                    children: [
                      Checkbox(value: false, onChanged: (_) {}),
                      Text('Remember Me'),
                      Spacer(),
                      TextButton(
                        onPressed: () {},
                        child: Text('Forgot Password?', style: TextStyle(color: Colors.pink)),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Login', style: TextStyle(color: Colors.white)),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pinkAccent,
                      padding: EdgeInsets.symmetric(vertical: 16),
                    ),
                  ),
                  SizedBox(height: 10),
                  Center(
                    child: MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () => Navigator.pushNamed(context, '/signup'),
                        child: Text("Don't have an Account? Sign up", style: TextStyle(color: Colors.pink)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
