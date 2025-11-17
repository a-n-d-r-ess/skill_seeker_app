import 'package:flutter/material.dart';

class QuestionsPage extends StatelessWidget {
  const QuestionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    const background = Color(0xFFF0EDE6);

    Widget bubble(String text, {bool alignRight = false}) {
      return Align(
        alignment: alignRight ? Alignment.centerRight : Alignment.centerLeft,
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 6),
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
          decoration: BoxDecoration(
            color: const Color(0xFFD4CABE),
            borderRadius: BorderRadius.circular(18),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (!alignRight) const Icon(Icons.add, size: 18),
              if (!alignRight) const SizedBox(width: 6),
              Flexible(
                child: Text(
                  text,
                  softWrap: true,
                ),
              ),
              if (alignRight) const SizedBox(width: 6),
              if (alignRight) const Icon(Icons.add, size: 18),
            ],
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back_ios_new, size: 18),
                    onPressed: () => Navigator.pop(context),
                  ),
                  const SizedBox(width: 4),
                  const Text(
                    'BACK TO SKILLS',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(24),
                    border: Border.all(
                      color: const Color(0xFFC9BFB0),
                      width: 5,
                    ),
                  ),
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      bubble(
                        'What is AI actually doing behind the scenes when it “summarizes” my resume?',
                        alignRight: true,
                      ),
                      bubble(
                        'How can I explain AI on my resume if I have only used ChatGPT for projects?',
                      ),
                      bubble(
                        'What’s the difference between a data scientist and a machine learning engineer?',
                        alignRight: true,
                      ),
                      bubble(
                        'Which first-year CS projects look most impressive to recruiters?',
                      ),
                      const Spacer(),
                      const Text(
                        'Tap + to save a question or ask SkillBot AI for a deeper answer.',
                        style: TextStyle(fontSize: 12, color: Colors.black54),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
