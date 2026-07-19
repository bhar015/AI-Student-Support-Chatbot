import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            const Icon(
              Icons.school_rounded,
              size: 90,
              color: Color(0xFF2563EB),
            ),

            const SizedBox(height: 30),

            const Text(
              "AI Student Support",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              "Your Smart Campus Assistant",
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),

            const SizedBox(height: 50),

            const CircularProgressIndicator(
              color: Color(0xFF2563EB),
            ),
          ],
        ),
      ),
    );
  }
}