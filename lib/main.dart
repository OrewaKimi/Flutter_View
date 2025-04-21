import 'package:flutter/material.dart';
import 'package:view/home_page.dart';

void main() {
  runApp(const GenZFlutterApp());
}

class GenZFlutterApp extends StatelessWidget {
  const GenZFlutterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gen Z Flutter Showcase',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
