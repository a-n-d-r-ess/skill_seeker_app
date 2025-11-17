import 'package:flutter/material.dart';

class MessagesPage extends StatelessWidget {
  const MessagesPage({super.key});

  @override
  Widget build(BuildContext context) {
    const background = Color(0xFFF0EDE6);

    Widget messageTile({
      required String name,
      required String tag,
      required String preview,
      required String time,
      bool unread = true,
    }) {
      return Container(
        margin: const EdgeInsets.symmetric(vertical: 4),
        padding: const EdgeInsets.symmetric(vertical: 6),
        decoration: BoxDecoration(
          color: Color(0xFFD4CABE),
          borderRadius: BorderRadius.circular(24),
        ),
        child: ListTile(
          leading: const CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(Icons.person_outline),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                name,
                style: const TextStyle(fontWeight: FontWeight.w600),
              ),
              Text(
                time,
                style: const TextStyle(fontSize: 11),
              ),
            ],
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (tag.isNotEmpty)
                Container(
                  margin: const EdgeInsets.only(top: 2, bottom: 4),
                  padding:
                      const EdgeInsets.symmetric(vertical: 2, horizontal: 6),
                  decoration: BoxDecoration(
                    color: Colors.black87,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    tag.toUpperCase(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      letterSpacing: 0.6,
                    ),
                  ),
                ),
              Text(
                preview,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
          trailing: unread
              ? const Icon(Icons.circle, size: 10, color: Colors.blue)
              : const SizedBox.shrink(),
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
                  'MESSAGES',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(height: 4),
              const Center(
                child: Text(
                  'All',
                  style: TextStyle(
                    fontSize: 13,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              const SizedBox(height: 12),

              // top avatars row
              SizedBox(
                height: 52,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 6,
                  separatorBuilder: (_, __) => const SizedBox(width: 8),
                  itemBuilder: (_, __) => const CircleAvatar(
                    radius: 22,
                    backgroundColor: Colors.black12,
                    child: Icon(Icons.person_outline),
                  ),
                ),
              ),
              const SizedBox(height: 12),

              Expanded(
                child: ListView(
                  children: [
                    messageTile(
                      name: 'John Doe',
                      tag: 'Connection',
                      preview:
                          'Hey Andres, would you be free for a quick call about the hackathon this weekend?',
                      time: '11:57 AM',
                    ),
                    messageTile(
                      name: 'Jane Doe',
                      tag: 'Opportunity',
                      preview:
                          'I showed your resume to my manager and she’s interested in chatting about a summer internship.',
                      time: '09:23 AM',
                    ),
                    messageTile(
                      name: 'Richard Johnson',
                      tag: 'Project',
                      preview:
                          'I pushed the new changes to the SkillSeeker repo. Can you review the home page layout?',
                      time: '08:54 AM',
                    ),
                    messageTile(
                      name: 'UTD Career Center',
                      tag: 'Reminder',
                      preview:
                          'Don’t forget: Resume workshop tonight at 6:00 PM in ECSW.',
                      time: 'Yesterday',
                      unread: false,
                    ),
                    messageTile(
                      name: 'SkillBot AI',
                      tag: 'AI Recap',
                      preview:
                          'Here’s a summary of the roles that match your skills: SWE intern, UX engineering, and data analyst.',
                      time: 'Yesterday',
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
