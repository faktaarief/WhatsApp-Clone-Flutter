import 'package:flutter/material.dart';
import 'package:whatsapp_clone/CustomUI/CustomCard.dart';
import 'package:whatsapp_clone/Models/ChatModel.dart';

class ChatPage extends StatefulWidget {
  ChatPage({Key? key}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatModel> chats = [
    ChatModel(
      name: "Fakta Arief",
      isGroup: false,
      currentMessage: "Hi, Fakta!",
      time: "4:00",
      icon: "person.svg"
    ),
    ChatModel(
      name: "Tiga Dev",
      isGroup: true,
      currentMessage: "Hola guys!",
      time: "11:00",
      icon: "groups.svg"
    ),
    ChatModel(
      name: "Faiz Ramadhana",
      isGroup: false,
      currentMessage: "Hi, Faiz!",
      time: "10:00",
      icon: "person.svg"
    ),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.chat),
      ),
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context, index) => CustomCard(
          chatModel: chats[index]
        ),
      ),
    );
  }
}
