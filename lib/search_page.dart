import 'package:flutter/material.dart';
import '../components/search_view.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SearchView(),
    );
  }
}
