import 'package:flutter_test/flutter_test.dart';
import 'package:my_project_name/main.dart';

void main() {
  testWidgets('App builds and shows a widget', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    // Check that at least one widget is shown (not empty)
    expect(find.byType(Scaffold), findsWidgets);
  });
}
