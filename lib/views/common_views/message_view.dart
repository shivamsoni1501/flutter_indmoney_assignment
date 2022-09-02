import 'package:flutter/material.dart';

class MessageView extends StatelessWidget {
  final String message;
  const MessageView({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(message));
  }
}
