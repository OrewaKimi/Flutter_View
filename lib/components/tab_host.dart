import 'package:flutter/material.dart';

class TabHost extends StatelessWidget {
  const TabHost({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          backgroundColor: Colors.deepPurple[500],
          title: const Text('TabHost Demo'),
          bottom: const TabBar(
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white70,
            indicatorColor: Colors.white,
            tabs: [
              Tab(icon: Icon(Icons.star), text: 'Favorit'),
              Tab(icon: Icon(Icons.music_note), text: 'Musik'),
              Tab(icon: Icon(Icons.settings), text: 'Setting'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text('Favorit kamu 🎉', style: TextStyle(color: Colors.black87, fontSize: 20))),
            Center(child: Text('Playlist Gen Z 🔥', style: TextStyle(color: Colors.black87, fontSize: 20))),
            Center(child: Text('Pengaturan ⚙️', style: TextStyle(color: Colors.black87, fontSize: 20))),
          ],
        ),
      ),
    );
  }
}
