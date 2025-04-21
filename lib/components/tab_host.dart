import 'package:flutter/material.dart';
import 'card_view.dart';

class TabHost extends StatelessWidget {
  const TabHost({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          const TabBar(
            labelColor: Colors.white,
            indicatorColor: Colors.white,
            tabs: [
              Tab(icon: Icon(Icons.home), text: 'Komponen'),
              Tab(icon: Icon(Icons.info), text: 'Tentang'),
            ],
          ),
          Expanded(
            child: TabBarView(
              children: [
                ListView(
                  padding: const EdgeInsets.all(16),
                  children: const [
                    ComponentCard(
                      title: 'SearchView',
                      description: 'Komponen untuk pencarian cepat dengan tampilan modern.',
                    ),
                    ComponentCard(
                      title: 'NestedScrollView',
                      description: 'View scrollable yang memungkinkan header mengambang dan body bisa discroll.',
                    ),
                    ComponentCard(
                      title: 'CardView',
                      description: 'Komponen kartu untuk menampilkan informasi dengan latar menarik.',
                    ),
                    ComponentCard(
                      title: 'Tabhost',
                      description: 'Navigasi tab untuk berpindah antar konten dalam satu halaman.',
                    ),
                  ],
                ),
                Center(
                  child: Text(
                    'Aplikasi demo komponen Flutter dengan gaya Gen Z ✨',
                    style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.w500),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
