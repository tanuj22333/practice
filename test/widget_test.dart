// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fone/main.dart';
import 'package:fone/testViews/message_display.dart';

void main() {
  test('test', () {
    print('Hello World!');
  });

  testWidgets('message-display widget test', (tester) async {
    await tester.pumpWidget(MaterialApp(home: MessageDisplay()));
    final buttonFinder = find.byType(ElevatedButton);

    expect(find.text('Hello world'), findsNothing);
    expect(find.text('Hello world'), findsOneWidget);

    await tester.tap(buttonFinder);
    await tester.pump();

    expect(find.text('Hello world'), findsOneWidget);
  });

  testWidgets('Counter Widget test', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(body: MyHomePage()),
      ),
    );

    final fabFinder = find.byType(FloatingActionButton);
    await tester.tap(fabFinder);
    await tester.pump();

    expect(find.text('1'), findsOneWidget);
    expect(find.text('0'), findsOneWidget);
  });

  /*
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });

   */
}
