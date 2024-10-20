import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:profile_diri/main.dart'; // Pastikan import sesuai dengan nama folder kamu

void main() {
  testWidgets('Login button test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const LoginPage());

    // Verify the login button exists
    expect(find.text('Go to Form Input'), findsOneWidget);

    // Tap the login button and trigger navigation
    await tester.tap(find.text('Go to Form Input'));
    await tester.pumpAndSettle(); // Tunggu sampai semua widget muncul

    // Verify that we've navigated to the Form Input page
    expect(find.text('Input Form'), findsOneWidget);
  });
}
