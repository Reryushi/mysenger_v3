import 'package:flutter/material.dart';
import 'package:mysengerv2/config/Palette.dart';
import 'package:mysengerv2/widgets/ChatAppBar.dart';
import 'package:mysengerv2/widgets/ChatListWidget.dart';

class ConversationPage extends StatefulWidget {
  @override
  _ConversationPageState createState() => _ConversationPageState();

  const ConversationPage();
}

class _ConversationPageState extends State<ConversationPage> {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Expanded(flex: 2, child: ChatAppBar()), // Custom app bar for chat screen
      Expanded(
          flex: 11,
          child: Container(
            //color: Palette.chatBackgroundColor,
            // delete comment untuk dark mode
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/dark.jpg"),
                  fit: BoxFit.fill,
                )
            ),
            child: ChatListWidget(),
          ))
    ]);
  }
}