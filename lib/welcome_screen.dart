import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.pinkAccent,
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(60)),
            ),
            child: Center(
              child: Text(
                'Welcome',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(height: 40),
          ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, '/signin'),
            child: Text('Sign In'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.pinkAccent,
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, '/signup'),
            child: Text('Sign Up'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.pinkAccent,
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, '/home'),
            child: Text('Home'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.pinkAccent,
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
            ),
          ),
        ],
      ),
    );
  }
}
