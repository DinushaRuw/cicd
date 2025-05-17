import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:my_project_name/main.dart';

void main() {
  testWidgets('App builds and shows a widget', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    // Check that at least one Scaffold widget is present
    expect(find.byType(Scaffold), findsWidgets);
  });
}
