import 'package:flutter/material.dart';
import 'package:project_incognito/components/message_tile.dart';
import 'package:project_incognito/utils/dialog_util.dart';

class ChatMessage {
  String messageContent;
  String messageType;
  ChatMessage({required this.messageContent, required this.messageType});
}

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatMessage> messages = [
    ChatMessage(messageContent: "Hello, Will", messageType: "receiver"),
    ChatMessage(messageContent: "How have you been?", messageType: "receiver"),
    ChatMessage(
        messageContent: "Hey Kriss, I am doing fine dude. wbu?",
        messageType: "sender"),
    // ChatMessage(messageContent: "ehhhh, doing OK.", messageType: "receiver"),
    // ChatMessage(
    //     messageContent: "Is there any thing wrong?", messageType: "sender"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        flexibleSpace: SafeArea(
          child: Container(
            padding: const EdgeInsets.only(right: 16),
            child: Row(
              children: <Widget>[
                const SizedBox(
                  width: 6,
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back_rounded,
                    size: 25,
                  ),
                ),
                const SizedBox(
                  width: 3,
                ),
                Expanded(
                  child: ListTile(
                    onTap: () {
                      showGroupDetails(context);
                    },
                    contentPadding: EdgeInsets.all(0),
                    leading: CircleAvatar(
                      backgroundColor: Colors.red,
                    ),
                    title: Text('Group Name'),
                    subtitle: Text('sub title'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Stack(
        children: <Widget>[
          //////////// message builder
          ListView.builder(
            itemCount: messages.length,
            shrinkWrap: true,
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return MessageTile(
                message: messages[index].messageContent,
                messageType: messages[index].messageType,
                name: 'Yasindu Samarasinghe',
              );
            },
          ),
          //////////// bottom texting field
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              padding: const EdgeInsets.only(left: 10, bottom: 10, top: 10),
              height: 60,
              width: double.infinity,
              color: Colors.black12,
              child: Row(
                children: <Widget>[
                  const SizedBox(
                    width: 15,
                  ),
                  const Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Write message...",
                          hintStyle: TextStyle(color: Colors.white),
                          border: InputBorder.none),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  SizedBox(
                    height: 35,
                    child: FloatingActionButton(
                      onPressed: () {},
                      backgroundColor: Colors.blueAccent,
                      elevation: 0,
                      child: const Icon(
                        Icons.send,
                        color: Colors.white,
                        size: 18,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
