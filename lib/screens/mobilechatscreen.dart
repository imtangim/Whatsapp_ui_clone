import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/chatlist.dart';
import 'package:whatsapp_clone/utils/colors.dart';
import 'package:whatsapp_clone/utils/info.dart';

class MobileChatScreen extends StatelessWidget {
  const MobileChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: MediaQuery.of(context).size.width * 0.05,
        automaticallyImplyLeading: true,
        backgroundColor: appBarColor,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 10.0,
                left: 0,
                right: 3,
                bottom: 10,
              ),
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      info[0]["profilePic"].toString(),
                    ),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(150),
                ),
                height: MediaQuery.of(context).size.height * 0.06,
                width: MediaQuery.of(context).size.width * 0.13,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 9.0,
                left: 0,
                right: 3,
                bottom: 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    (info[0]['name']?.split(" ")[0]).toString(),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.005,
                  ),
                  Text(
                    "last seen ${messages[messages.length - 1]['time'].toString()}",
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: const TextStyle(
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.videocam),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.phone),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Column(
        children: [
          //chatlist
          const Expanded(child: Chatlist()),
          //textinput
          Container(
            margin: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: mobileChatBoxColor.withOpacity(0.2),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                width: 0,
                style: BorderStyle.none,
              ),
            ),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: mobileChatBoxColor,
                prefixIcon: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.2,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          child: const Icon(
                            Icons.add,
                            color: Colors.grey,
                          ),
                          onTap: () {},
                        ),
                        InkWell(
                          child: const Icon(
                            Icons.emoji_emotions,
                            color: Colors.grey,
                          ),
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                ),
                hintText: "Type a message",
                hintStyle: const TextStyle(
                  color: Colors.white,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                ),
                contentPadding: const EdgeInsets.all(0),
                suffixIcon: const Icon(Icons.send),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
