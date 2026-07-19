import 'package:flutter/material.dart';

void main() {
  runApp(const StudentSupportAI());
}

class StudentSupportAI extends StatelessWidget {
  const StudentSupportAI({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AI Student Support',
      home: Scaffold(
        appBar: AppBar(
          title: const Text("AI Student Support"),
          centerTitle: true,
        ),
        body: const Center(
          child: Text(
            "Hello Bhargavi! 👋",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}