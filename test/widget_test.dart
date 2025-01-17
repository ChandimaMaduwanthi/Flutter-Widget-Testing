// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_assignment/main.dart';

void main() {
  testWidgets('Should enter your name', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    expect(find.text(""), findsOneWidget);
    expect(find.text("Name"), findsNothing);

    await tester.enterText(find.byType(TextField),"Name");
    await tester.pump();

    expect(find.text("Name"), findsOneWidget);
    expect(find.text(""), findsNothing);
  });
}
