import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_profile/main.dart';

void main() {
  group('Flutter Profile App Tests', () {
    testWidgets('App starts and displays profile screen',
        (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(const MyApp());

      // Verify that app is built successfully
      expect(find.byType(Scaffold), findsWidgets);
    });

    testWidgets('Profile header displays correctly',
        (WidgetTester tester) async {
      await tester.pumpWidget(const MyApp());

      // Look for the profile header text
      expect(find.text('John Developer'), findsOneWidget);
      expect(find.text('Flutter & Web Developer'), findsOneWidget);
    });

    testWidgets('Buttons are present and tappable',
        (WidgetTester tester) async {
      await tester.pumpWidget(const MyApp());

      // Find Edit Profile button
      expect(find.text('Edit Profile'), findsOneWidget);
      expect(find.text('Download CV'), findsOneWidget);

      // Tap and verify
      await tester.tap(find.text('Edit Profile'));
      await tester.pumpAndSettle();
    });

    testWidgets('Skills section is displayed', (WidgetTester tester) async {
      await tester.pumpWidget(const MyApp());

      // Scroll to skills section
      await tester.scrollUntilVisible(
        find.text('Skills & Expertise'),
        500.0,
      );

      expect(find.text('Skills & Expertise'), findsOneWidget);
      expect(find.text('Flutter'), findsOneWidget);
    });
  });
}
