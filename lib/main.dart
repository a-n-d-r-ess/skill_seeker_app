import 'package:flutter/material.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const SkillSeekerApp());
}

class SkillSeekerApp extends StatelessWidget {
  const SkillSeekerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Skill Seeker',
      debugShowCheckedModeBanner: false,
      home: const HomePage(userName: 'Andres'),
    );
  }
}
