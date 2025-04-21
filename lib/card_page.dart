import 'package:flutter/material.dart';
import '../components/card_view.dart';

class CardPage extends StatelessWidget {
  const CardPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> cardData = [
      {
        'title': 'Explore Places',
        'description': 'Discover amazing places around the world.',
        'icon': Icons.location_on
      },
      {
        'title': 'Music Vibes',
        'description': 'Listen to trending music playlists.',
        'icon': Icons.music_note
      },
      {
        'title': 'Learn & Grow',
        'description': 'Upskill with online courses and events.',
        'icon': Icons.school
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Showcase'),
        backgroundColor: Colors.deepPurple[400],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: cardData.length,
        itemBuilder: (context, index) {
          final card = cardData[index];
          return ComponentCard(
            title: card['title'],
            description: card['description'],
            icon: card['icon'],
          );
        },
      ),
    );
  }
}
