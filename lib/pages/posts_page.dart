import 'package:flutter/material.dart';

class PostsPage extends StatelessWidget {
  const PostsPage({super.key});

  @override
  Widget build(BuildContext context) {
    const background = Color(0xFFF0EDE6);

    Widget postCard({
      required String name,
      required String caption,
      required String likes,
      required String comments,
    }) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            contentPadding: EdgeInsets.zero,
            leading: const CircleAvatar(
              backgroundColor: Colors.black12,
            ),
            title: Text(name),
            subtitle: const Text('BIO'),
            trailing: const Icon(Icons.more_vert),
          ),
          Container(
            height: 160,
            decoration: BoxDecoration(
              color: Colors.orange.shade100,
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Center(
              child: Text('Project Screenshot'),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            caption,
            style: const TextStyle(fontSize: 13.5),
          ),
          const SizedBox(height: 6),
          Row(
            children: [
              const Icon(Icons.favorite_border, size: 18),
              const SizedBox(width: 4),
              Text(likes),
              const SizedBox(width: 16),
              const Icon(Icons.chat_bubble_outline, size: 18),
              const SizedBox(width: 4),
              Text(comments),
            ],
          ),
          const SizedBox(height: 16),
        ],
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
              // Back row
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
                  'POSTS',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(height: 4),
              const Center(
                child: Text('—', style: TextStyle(fontSize: 20)),
              ),
              const SizedBox(height: 8),
              Expanded(
                child: ListView(
                  children: [
                    postCard(
                      name: 'Andres Torres',
                      caption:
                          'Just finished the first version of our SkillSeeker home page in Flutter! '
                          'Used a custom bottom nav bar and grid layout to match our Figma design.',
                      likes: '34 likes',
                      comments: '12 comments',
                    ),
                    postCard(
                      name: 'Naomi R.',
                      caption:
                          'Mock interview project: built a mini portfolio page that pulls projects from Firebase. '
                          'Next step is wiring it up to the SkillBot AI recommendations.',
                      likes: '21 likes',
                      comments: '7 comments',
                    ),
                    postCard(
                      name: 'UTD CS Society',
                      caption:
                          'Reminder: Portfolio review night this Thursday at 7 PM. '
                          'Bring your resume and any projects you want feedback on!',
                      likes: '89 likes',
                      comments: '25 comments',
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
