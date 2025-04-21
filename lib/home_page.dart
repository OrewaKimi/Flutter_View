import 'package:flutter/material.dart';
import 'search_page.dart';
import 'nested_scroll_page.dart';
import 'card_page.dart';
import 'tabhost_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[300],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.deepPurple[400],
        title: const Text(
          'Gen Z Flutter Components',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          color: Color(0xFFF9F9F9), // 👉 Lebih netral, clean
          borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
        ),
        child: ListView(
          children: [
            _menuCard(
              context,
              title: 'SearchView',
              subtitle: 'Cari data real-time tanpa border',
              icon: Icons.search,
              color: Colors.blueAccent,
              page: const SearchPage(),
            ),
            _menuCard(
              context,
              title: 'NestedScrollView',
              subtitle: 'Scroll view kompleks dengan header',
              icon: Icons.view_agenda_rounded,
              color: Colors.orangeAccent,
              page: const NestedScrollPage(),
            ),
            _menuCard(
              context,
              title: 'CardView',
              subtitle: 'Beberapa card variasi clean UI',
              icon: Icons.credit_card,
              color: Colors.green,
              page: const CardPage(),
            ),
            _menuCard(
              context,
              title: 'TabHost',
              subtitle: 'Tampilan tab dengan konten berbeda',
              icon: Icons.tab,
              color: Colors.pinkAccent,
              page: const TabHostPage(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _menuCard(BuildContext context,
      {required String title,
      required String subtitle,
      required IconData icon,
      required Color color,
      required Widget page}) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => page),
      ),
      child: Container(
        margin: const EdgeInsets.only(bottom: 16),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white, // 👉 Lebih clean
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.deepPurple.withOpacity(0.06),
              blurRadius: 8,
              offset: const Offset(0, 4),
            )
          ],
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: color.withOpacity(0.15),
                shape: BoxShape.circle,
              ),
              child: Icon(icon, color: color, size: 26),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: Color(0xFF222222), // 👉 Warna teks utama lebih gelap
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    subtitle,
                    style: TextStyle(
                      color: Colors.grey[600], // 👉 Warna subtitle lebih soft tapi tetap jelas
                      fontSize: 13,
                    ),
                  )
                ],
              ),
            ),
            const Icon(Icons.arrow_forward_ios_rounded,
                color: Color(0xFF555555), size: 18), // 👉 Arrow lebih gelap biar terbaca
          ],
        ),
      ),
    );
  }
}
