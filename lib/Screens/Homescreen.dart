import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Pages/ChatPage.dart';

class Homescreen extends StatefulWidget {
  Homescreen({Key? key}) : super(key: key);

  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> with SingleTickerProviderStateMixin {
  late TabController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TabController(
      length: 4,
      vsync: this,
      initialIndex: 0
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WhatsApp Clone"),
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          PopupMenuButton<String> (
            onSelected: (value) {
              print(value);
            },
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  child: Text("New Group"),
                  value: "New Group"
                ),
                PopupMenuItem(
                  child: Text("New Broadcast"),
                  value: "New Broadcast"
                ),
                PopupMenuItem(
                  child: Text("WhatsApp Web"),
                  value: "WhatsApp Web"
                ),
                PopupMenuItem(
                  child: Text("Starred Messages"),
                  value: "Starred Messages"
                ),
                PopupMenuItem(
                  child: Text("Settings"),
                  value: "Settings"
                ),
              ];
          })
        ],
        bottom: TabBar(
          controller: _controller,
          indicatorColor: Colors.white,
          tabs: [
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              text: "CHATS"
            ),
            Tab(
              text: "STATUS"
            ),
            Tab(
              text: "CALLS"
            ),
          ],
        )
      ),
      body: TabBarView(
        controller: _controller,
        children: [
          Text("Camera"),
          ChatPage(),
          Text("Statuses"),
          Text("Calls"),
        ],
      ),
    );
  }
}
