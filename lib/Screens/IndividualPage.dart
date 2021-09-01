import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:whatsapp_clone/Models/ChatModel.dart';

class IndividualPage extends StatefulWidget {
  IndividualPage({Key? key, this.chatModel}) : super(key: key);
  final ChatModel? chatModel;

  @override
  IndividualPageState createState() => IndividualPageState();
}

class IndividualPageState extends State<IndividualPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 70,
        titleSpacing: 0,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.arrow_back,
                size: 24,
              ),
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.blueGrey,
                child: SvgPicture.asset(
                  widget.chatModel!.isGroup? "assets/groups.svg" : "assets/person.svg",
                  color: Colors.white,
                  height: 35,
                  width: 35,
                ),
              )
            ],
          ),
        ),
        title: InkWell(
          onTap: () {},
          child: Container(
            margin: EdgeInsets.all(6),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.chatModel!.name,
                  style: TextStyle(
                    fontSize: 18.5,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Last seen today at 12:05",
                  style: TextStyle(
                    fontSize: 13,
                  ),
                )
              ],
            ),
          ),
        ),
        actions: [
          IconButton(icon: Icon(Icons.videocam), onPressed: () {}),
          IconButton(icon: Icon(Icons.call), onPressed: () {}),
          PopupMenuButton<String> (
            onSelected: (value) {
              print(value);
            },
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  child: Text("View Contact"),
                  value: "View Contact"
                ),
                PopupMenuItem(
                  child: Text("Media, Links, and Docs"),
                  value: "Media, Links, and Docs"
                ),
                PopupMenuItem(
                  child: Text("Search"),
                  value: "Search"
                ),
                PopupMenuItem(
                  child: Text("Mute Notification"),
                  value: "Mute Notification"
                ),
                PopupMenuItem(
                  child: Text("Wallpaper"),
                  value: "Wallpaper"
                ),
              ];
          }),
        ],
      ),
    );
  }
}