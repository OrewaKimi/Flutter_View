import 'package:flutter/material.dart';
import '../components/nested_scroll_view_widget.dart';

class NestedScrollPage extends StatelessWidget {
  const NestedScrollPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: NestedScrollViewWidget(),
    );
  }
}
