import 'package:flutter/material.dart';
import 'package:whatsapp_clone/utils/info.dart';
import 'package:whatsapp_clone/widgets/mymessage.dart';
import 'package:whatsapp_clone/widgets/sendermessagecard.dart';

class Chatlist extends StatelessWidget {
  const Chatlist({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length,
      itemBuilder: (context, index) {
        if (messages[index]["isMe"] == true) {
          //my message
          return MyMessage(
            message: messages[index]['text'].toString(),
            date: messages[index]['time'].toString(),
            index: index,
            length: messages.length,
          );
        }
        //sender message
        return SenderMessage(
          message: messages[index]['text'].toString(),
          date: messages[index]['time'].toString(),
        );
      },
    );
  }
}
