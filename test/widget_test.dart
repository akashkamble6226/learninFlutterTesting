// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:learntesting/home_page.dart';

import 'package:learntesting/main.dart';

void main() {
  // testWidgets('Counter increments smoke test', (WidgetTester tester) async {
  //   // Build our app and trigger a frame.
  //   await tester.pumpWidget(const MyApp());

  //   // Verify that our counter starts at 0.
  //   expect(find.text('0'), findsOneWidget);
  //   expect(find.text('1'), findsNothing);

  //   // Tap the '+' icon and trigger a frame.
  //   await tester.tap(find.byIcon(Icons.add));
  //   await tester.pump();

  //   // Verify that our counter has incremented.
  //   expect(find.text('0'), findsNothing);
  //   expect(find.text('1'), findsOneWidget);
  // });

  // // test first
  // testWidgets('home page is created', (WidgetTester tester) async {
  //   // tester means the one who gonna test the widget
  //   // step 1 - find the widget you needed
  //   const testWidget =  MaterialApp(
  //     home: HomePage(),
  //   );

  //   // step 2 - execute the actual test
  //   // pump widget brings up the widget to upfront which you want to test
  //   await tester.pumpWidget(testWidget);

  //   // step 3 - check the output
  //   //  pump - it means setState for widget test (it rebuilds the UI)
  //   // pumpAndSettle - It means
  //   await tester.pumpAndSettle();
  // });

  // // test second

  // testWidgets('home page contains the hello world text',
  //     (WidgetTester tester) async {
  //   final testWidet = MaterialApp(
  //     home: HomePage(),
  //   );

  //   await tester.pumpWidget(testWidet);
  //   await tester.pumpAndSettle();

  //   expect(find.text('Hello World!'), findsOneWidget);
  // });

  // // test third

  // testWidgets('home page contain button', (WidgetTester tester) async {
  //   final testWidget = MaterialApp(
  //     home: HomePage(),
  //   );
  //   await tester.pumpWidget(testWidget);
  //   await tester.pumpAndSettle();

  //   final myButtonMaterial = find.descendant(
  //     of: find.byType(ElevatedButton),
  //     matching: find.byType(Material),
  //   );

  //   final materialButton = tester.widget<Material>(myButtonMaterial);

  //   expect(materialButton.color, Colors.blue);
  //   expect(find.text('Weather Today',) ,findsOneWidget);
  //   expect(find.byKey(const Key('icon_weather',)) , findsOneWidget);

  // });

  // test 4

  testWidgets('notify when button is pressed', (WidgetTester tester) async{
    var pressed = false;
    final testWidget = MaterialApp(home: HomePage(
      onPressed:() => pressed = true
    ),);

    await tester.pumpWidget(testWidget);
    await tester.pumpAndSettle();
    

    await tester.tap(find.byType(ElevatedButton));
    await tester.pumpAndSettle();


    expect(pressed, isTrue);


  });

}
