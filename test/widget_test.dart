import 'package:flutter_test/flutter_test.dart';
import 'package:my_project_name/main.dart';

void main() {
  testWidgets('App shows Sign Up screen', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    // Replace "Sign Up" with any text you know appears on your home screen
    expect(find.text('Sign Up'), findsOneWidget);
  });
}
