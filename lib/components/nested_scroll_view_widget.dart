import 'package:flutter/material.dart';
import 'package:view/components/search_view.dart';
import 'package:view/components/tab_host.dart';

class NestedScrollViewWidget extends StatelessWidget {
  const NestedScrollViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (context, innerBoxIsScrolled) => [
        SliverAppBar(
          floating: true,
          snap: true,
          backgroundColor: Colors.deepPurple[400],
          title: const SearchView(),
        )
      ],
      body: const TabHost(),
    );
  }
}
