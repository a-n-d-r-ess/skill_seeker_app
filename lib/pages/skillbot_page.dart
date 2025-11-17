import 'package:flutter/material.dart';

class SkillBotPage extends StatelessWidget {
  const SkillBotPage({super.key});

  @override
  Widget build(BuildContext context) {
    const background = Color(0xFFF0EDE6);

    Widget sideButton(String text) {
      return Container(
        height: 70,
        margin: const EdgeInsets.symmetric(vertical: 6),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Color(0xFFC9BFB0), width: 3),
        ),
        child: Center(
          child: RotatedBox(
            quarterTurns: 3,
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // BACK BUTTON ROW
              Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back_ios_new, size: 18),
                    onPressed: () => Navigator.pop(context),
                  ),
                  const SizedBox(width: 4),
                  const Text(
                    'BACK TO HOME',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              const SizedBox(height: 4),

              const Center(
                child: Text(
                  'SkillBot AI',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(height: 12),

              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(24),
                    border: Border.all(
                      color: Color(0xFFC9BFB0),
                      width: 5,
                    ),
                  ),
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
                  child: Row(
                    children: [
                      // left buttons
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          sideButton('SKILLS'),
                          sideButton('RESUME'),
                          sideButton('CAREER PLAN'),
                          sideButton('QUESTIONS'),
                        ],
                      ),
                      const SizedBox(width: 12),
                      // right text
                      const Expanded(
                        child: Center(
                          child: Text(
                            'HI ANDRES!\n\nSELECT WHAT\nI CAN GUIDE YOU\nWITH TODAY',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 1.1,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),

              // fake input bar
              Container(
                height: 40,
                decoration: BoxDecoration(
                  color: Color(0xFFD4CABE),
                  borderRadius: BorderRadius.circular(20),
                ),
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: const Text(
                  'Ask SkillBot AI:  “How can I get an internship as a CS major?”',
                  style: TextStyle(color: Colors.white70, fontSize: 12),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
