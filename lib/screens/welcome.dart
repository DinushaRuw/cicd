import 'package:flutter/material.dart';
import 'login.dart'; // Import LoginPage

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Color(0xFFD6C6E1), // Replace with actual Light_Lavender color
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/gtr.jpg', // Ensure this image exists in assets folder
              width: 327,
              height: 274,
            ),
            SizedBox(height: 20),
            Text(
              "Welcome To The Relaxify",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: Text(
                "Your personal space to find peace and balance. Whether you're feeling overwhelmed or simply need a moment to relax, we’re here to help.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 40),

            // GET STARTED Button
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                ); // Navigate to LoginPage
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                textStyle: TextStyle(fontSize: 20),
              ),
              child: Text("GET STARTED"),
            ),
          ],
        ),
      ),
    );
  }
}
