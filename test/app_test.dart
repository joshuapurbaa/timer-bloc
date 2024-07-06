import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:timer_bloc/app.dart';
import 'package:timer_bloc/pages/timer_page.dart';

void main() {
  testWidgets('App widget test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const App());

    // Verify that the app uses MaterialApp
    expect(find.byType(MaterialApp), findsOneWidget);

    // Verify that the app title is 'Timer'
    final MaterialApp materialApp = tester.widget(find.byType(MaterialApp));
    expect(materialApp.title, 'Timer');

    // Verify that the theme's primary color is correct
    final ThemeData theme = materialApp.theme!;
    expect(theme.colorScheme.primary, const Color.fromRGBO(72, 74, 126, 1));

    // Verify that TimerPage is the home widget
    expect(find.byType(TimerPage), findsOneWidget);
  });

  testWidgets('App widget layout test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const App());

    // Verify that the TimerPage is rendered
    expect(find.byType(TimerPage), findsOneWidget);

    // You might want to add more specific tests here depending on what TimerPage contains
    // For example, if TimerPage has a specific text or widget, you can test for its presence:
    // expect(find.text('Your expected text'), findsOneWidget);
    // expect(find.byType(YourExpectedWidgetType), findsOneWidget);
  });
}
