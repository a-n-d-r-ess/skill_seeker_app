import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    const background = Color(0xFFF0EDE6);

    Widget pillButton(String label) {
      return Expanded(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 4),
          padding: const EdgeInsets.symmetric(vertical: 8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Color(0xFFC9BFB0), width: 2),
          ),
          child: Center(
            child: Text(
              label,
              style: const TextStyle(fontWeight: FontWeight.w600),
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: background,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back_ios_new, size: 18),
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              ),
              const SizedBox(height: 4),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(color: Color(0xFFC9BFB0), width: 4),
                ),
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
                child: Column(
                  children: [
                    const CircleAvatar(
                      radius: 30,
                      child: Icon(Icons.person, size: 34),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Sample Name',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(height: 4),
                    const Text('City, State'),
                    const Text('School & Major / Company & Position'),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        pillButton('Follow'),
                        pillButton('Connect'),
                        pillButton('Message'),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Overview',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        SizedBox(width: 16),
                        Text('Posts', style: TextStyle(color: Colors.grey)),
                        SizedBox(width: 16),
                        Text('Experience',
                            style: TextStyle(color: Colors.grey)),
                      ],
                    ),
                    const SizedBox(height: 16),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'User Biography',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Skills',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ),
                    const SizedBox(height: 6),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 4, horizontal: 10),
                          decoration: BoxDecoration(
                            color: Color(0xFFD4CABE),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Text('PYTHON'),
                        ),
                        const SizedBox(width: 8),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 4, horizontal: 10),
                          decoration: BoxDecoration(
                            color: Color(0xFFD4CABE),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Text('C++'),
                        ),
                        const SizedBox(width: 8),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 4, horizontal: 10),
                          decoration: BoxDecoration(
                            color: Color(0xFFD4CABE),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Text('INSERT SKILL'),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Shared Interests',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                          'Bulleted list of shared interests between users'),
                    ),
                    const SizedBox(height: 12),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Mutual Connections',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ),
                    const SizedBox(height: 6),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: List.generate(
                        6,
                        (index) => const Padding(
                          padding: EdgeInsets.only(right: 8),
                          child: CircleAvatar(
                            radius: 18,
                            backgroundColor: Colors.black12,
                            child: Icon(Icons.person_outline),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
