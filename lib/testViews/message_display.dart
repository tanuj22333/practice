import 'package:flutter/material.dart';

class MessageDisplay extends StatefulWidget {
  const MessageDisplay({super.key});

  @override
  MessageDisplayState createState() => MessageDisplayState();
}

class MessageDisplayState extends State<MessageDisplay> {
  String message = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              setState(() {
                message = 'Hello world';
              });
            },
            child: Text('Show message'),
          ),
          Text(message),
        ],
      ),
    );
  }
}
