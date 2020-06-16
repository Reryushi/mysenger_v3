import 'package:flutter_test/flutter_test.dart';
import 'package:mysengerv2/main.dart';
import 'package:mysengerv2/pages/RegisterPage.dart';

void main() {
  testWidgets('Main UI Test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MySenger());

    expect(find.byType(RegisterPage),findsOneWidget);

  });
}