import 'package:flutter/material.dart';

class CareerPlanPage extends StatelessWidget {
  const CareerPlanPage({super.key});

  @override
  Widget build(BuildContext context) {
    const background = Color(0xFFF0EDE6);

    Widget smallCard(String text, {Widget? child}) {
      return Expanded(
        child: Container(
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.symmetric(vertical: 4),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: Color(0xFFC9BFB0), width: 3),
          ),
          child: child ??
              Center(
                child: Text(
                  text,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontWeight: FontWeight.w600),
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
                    'BACK TO SKILLBOT',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Container(
                width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(color: Color(0xFFC9BFB0), width: 4),
                ),
                child: const Center(
                  child: Text(
                    'CAREER PLAN',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              const Center(
                child: Text(
                  'Here is some of the skills that you liked:\nClick to see description',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 13),
                ),
              ),
              const SizedBox(height: 8),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          smallCard('Insert\nSkill'),
                          const SizedBox(width: 10),
                          smallCard('Insert\nSkill'),
                        ],
                      ),
                      const SizedBox(height: 12),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Here is some Universities that might be the best match for you:',
                          style: TextStyle(fontSize: 13),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          smallCard(
                            '',
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(Icons.school_outlined, size: 26),
                                SizedBox(height: 4),
                                Text('UTD'),
                              ],
                            ),
                          ),
                          const SizedBox(width: 10),
                          smallCard(
                            '',
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(Icons.school, size: 26),
                                SizedBox(height: 4),
                                Text('UT'),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Here is some Career Paths that might be the best match for you:',
                          style: TextStyle(fontSize: 13),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          smallCard('career'),
                          const SizedBox(width: 10),
                          smallCard('Cool\ncareer'),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          smallCard('career'),
                          const SizedBox(width: 10),
                          smallCard('career'),
                        ],
                      ),
                      const SizedBox(height: 16),
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
