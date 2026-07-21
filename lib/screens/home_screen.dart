import 'package:flutter/material.dart';
import '../widgets/feature_card.dart';
import 'chat_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),

                const Text(
                  "👋 Welcome Back!",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 8),

                const Text(
                  "Ready to study smarter today?",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                  ),
                ),

                const SizedBox(height: 30),

                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ChatScreen(),
                      ),
                    );
                  },
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: const Color(0xFF2563EB),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.smart_toy_rounded,
                              color: Colors.white,
                              size: 30,
                            ),
                            SizedBox(width: 10),
                            Text(
                              "Ask AI",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: 12),

                        Text(
                          "Get instant answers to your academic questions.",
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 35),

                const Text(
                  "Quick Tools",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 20),

                const Wrap(
                  spacing: 16,
                  runSpacing: 16,
                  children: [
                    FeatureCard(
                      icon: Icons.note_alt_rounded,
                      title: "Notes",
                    ),
                    FeatureCard(
                      icon: Icons.quiz_rounded,
                      title: "Quiz",
                    ),
                    FeatureCard(
                      icon: Icons.calendar_month_rounded,
                      title: "Planner",
                    ),
                    FeatureCard(
                      icon: Icons.description_rounded,
                      title: "Resume",
                    ),
                    FeatureCard(
                      icon: Icons.menu_book_rounded,
                      title: "FAQs",
                    ),
                    FeatureCard(
                      icon: Icons.school_rounded,
                      title: "Exams",
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}