import 'package:flutter/material.dart';

class NestedScrollViewWidget extends StatefulWidget {
  const NestedScrollViewWidget({super.key});

  @override
  State<NestedScrollViewWidget> createState() => _NestedScrollViewWidgetState();
}

class _NestedScrollViewWidgetState extends State<NestedScrollViewWidget> {
  final List<String> _categories = ['Semua', 'Favorit', 'Populer', 'Baru'];
  String _selectedCategory = 'Semua';

  final Map<String, List<String>> _data = {
    'Favorit': ['Flutter', 'Dart', 'Figma'],
    'Populer': ['React Native', 'Swift', 'Kotlin'],
    'Baru': ['Lottie', 'Gen Z Vibes', 'Music']
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepPurple,
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Tambah Item Coming Soon 🚀')),
          );
        },
        child: const Icon(Icons.add, color: Colors.white),
      ),
      body: NestedScrollView(
        headerSliverBuilder: (context, _) => [
          SliverAppBar(
            pinned: true,
            expandedHeight: 230,
            backgroundColor: Colors.deepPurple[500],
            flexibleSpace: FlexibleSpaceBar(
              title: const Text('Nested View', style: TextStyle(color: Colors.white)),
              background: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFF6A5AE0), Color(0xFF8E7BEF)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 100, left: 16, right: 16),
                  child: Wrap(
                    spacing: 8,
                    children: _categories.map((category) {
                      final isSelected = _selectedCategory == category;
                      return ChoiceChip(
                        label: Text(category),
                        selected: isSelected,
                        selectedColor: Colors.white,
                        backgroundColor: Colors.deepPurple[100],
                        labelStyle: TextStyle(
                          color: isSelected ? Colors.deepPurple : Colors.black87,
                        ),
                        onSelected: (_) {
                          setState(() {
                            _selectedCategory = category;
                          });
                        },
                      );
                    }).toList(),
                  ),
                ),
              ),
            ),
          ),
        ],
        body: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            if (_selectedCategory == 'Semua' || _selectedCategory == 'Favorit') ...[
              const SectionTitle(title: 'Favorit 🔥'),
              ..._data['Favorit']!.map((item) => ListItem(title: item)),
            ],
            if (_selectedCategory == 'Semua' || _selectedCategory == 'Populer') ...[
              const SectionTitle(title: 'Populer ⭐'),
              ..._data['Populer']!.map((item) => ListItem(title: item)),
            ],
            if (_selectedCategory == 'Semua' || _selectedCategory == 'Baru') ...[
              const SectionTitle(title: 'Baru 🎉'),
              ..._data['Baru']!.map((item) => ListItem(title: item)),
            ],
            const SizedBox(height: 60),
          ],
        ),
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;
  const SectionTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 20,
          color: Colors.black87,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  final String title;
  const ListItem({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
      margin: const EdgeInsets.symmetric(vertical: 6),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          const Icon(Icons.chevron_right, color: Colors.deepPurple),
          const SizedBox(width: 12),
          Text(
            title,
            style: const TextStyle(color: Colors.black87, fontSize: 18),
          ),
        ],
      ),
    );
  }
}
