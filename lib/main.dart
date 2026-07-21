import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';
import 'screens/home_screen.dart';
import 'themes/app_theme.dart';

void main() {
  runApp(const StudentSupportAI());
}

class StudentSupportAI extends StatelessWidget {
  const StudentSupportAI({super.key});

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
  debugShowCheckedModeBanner: false,
  title: 'CampusMind AI',
  theme: AppTheme.lightTheme,
  home: const HomeScreen(),
);
  }
}