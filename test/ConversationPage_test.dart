import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mysengerv2/pages/ConversationPage.dart';
import 'package:mysengerv2/widgets/ChatAppBar.dart';
import 'package:mysengerv2/widgets/ChatListWidget.dart';

void main(){
  const MaterialApp app = MaterialApp(
    home: Scaffold(
        body:  const ConversationPage()
    ),
  );

  testWidgets('ConversationPage UI Test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(app);

    expect(find.byType(ChatAppBar),findsOneWidget);
    expect(find.byType(ChatListWidget),findsOneWidget);


  });
}