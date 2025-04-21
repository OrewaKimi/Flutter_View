import 'package:flutter/material.dart';
import '../components/tab_host.dart';

class TabHostPage extends StatelessWidget {
  const TabHostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: TabHost(),
    );
  }
}
