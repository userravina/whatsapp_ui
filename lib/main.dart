import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp_ui/Provider/Whatsapp_provider.dart';
import 'package:whatsapp_ui/View/Tabbar_Screen.dart';

void main() {
  runApp(ChangeNotifierProvider(create: (context) => what_provider(),
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => Tabbar(),
      },
    ),
  ));
}
