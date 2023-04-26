import 'package:flutter/material.dart';
import 'package:whatsapp_ui/View/Call_view.dart';
import 'package:whatsapp_ui/View/chat_Screen.dart';
import 'package:whatsapp_ui/View/status_view.dart';

class Tabbar extends StatefulWidget {
  const Tabbar({Key? key}) : super(key: key);

  @override
  State<Tabbar> createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green.shade900,
          title: Text("WhatsApp"),
          actions: [
            Icon(Icons.search),
            Icon(Icons.more_vert_outlined),
          ],
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(
                text: "CHATS",
              ),
              Tab(
                text: "STATUS",
              ),
              Tab(
                text: "CALLS",
              ),
            ],
          ),
        ),
        body: TabBarView(children: [Chat_Screen(),Status(),Call()]),
      ),
    ));
  }
}
