import 'package:flutter/material.dart';

import '../widgets/home_button.dart';
import 'skills_page.dart';
import 'resume_page.dart';
import 'career_plan_page.dart';
import 'questions_page.dart';
import 'skillbot_page.dart';
import 'messages_page.dart';
import 'posts_page.dart';
import 'profile_page.dart';

class HomePage extends StatelessWidget {
  final String userName;

  const HomePage({super.key, required this.userName});

  @override
  Widget build(BuildContext context) {
    const background = Color(0xFFF0EDE6);

    return Scaffold(
      backgroundColor: background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Greeting + icon
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hi $userName!',
                    style: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    iconSize: 28,
                    icon: const Icon(Icons.lightbulb_outline),
                    onPressed: () {},
                  ),
                ],
              ),
              const SizedBox(height: 12),

              // Search bar
              TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  prefixIcon: const Icon(Icons.search),
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: const EdgeInsets.symmetric(vertical: 0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 24),

              // 2x2 grid of buttons with navigation
              Expanded(
                child: Center(
                  child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 14,
                    mainAxisSpacing: 14,
                    physics: const NeverScrollableScrollPhysics(),
                    childAspectRatio: 4 / 3,
                    children: [
                      HomeButton(
                        label: 'SKILLS',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const SkillsPage(),
                            ),
                          );
                        },
                      ),
                      HomeButton(
                        label: 'RESUME',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const ResumePage(),
                            ),
                          );
                        },
                      ),
                      HomeButton(
                        label: 'CAREER PLAN',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const CareerPlanPage(),
                            ),
                          );
                        },
                      ),
                      HomeButton(
                        label: 'QUESTIONS',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const QuestionsPage(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

      // bottom nav bar
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: background,
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        currentIndex: 0,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: (index) {
          if (index == 0) return; // already on home

          if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const SkillBotPage()),
            );
          } else if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const MessagesPage()),
            );
          } else if (index == 3) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const PostsPage()),
            );
          } else if (index == 4) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const ProfilePage()),
            );
          }
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.smart_toy_outlined), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.chat_bubble_outline), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.insights_outlined), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: ''),
        ],
      ),
    );
  }
}
