import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:view/main.dart';

void main() {
  testWidgets('AppBar title appears correctly', (WidgetTester tester) async {
    // Build the app and trigger a frame.
    await tester.pumpWidget(const GenZFlutterApp());

    // Verify that the AppBar title appears.
    expect(find.text('Gen Z Flutter Components'), findsOneWidget);
  });
}
