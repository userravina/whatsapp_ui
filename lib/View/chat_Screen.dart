import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp_ui/Provider/Whatsapp_provider.dart';

class Chat_Screen extends StatefulWidget {
  const Chat_Screen({Key? key}) : super(key: key);

  @override
  State<Chat_Screen> createState() => _Chat_ScreenState();
}

class _Chat_ScreenState extends State<Chat_Screen> {
  what_provider? providerT;
  what_provider? providerF;
  @override
  Widget build(BuildContext context) {
    providerT = Provider.of<what_provider>(context,listen:true);
    providerF = Provider.of<what_provider>(context,listen:false);

    return Scaffold(body:Column(
      children: [

        Expanded(

          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) => chat(index),
            itemCount: providerT!.chatlist.length,
          ),
        ),
      ],

    ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(
            providerT!.index == 1
                ? Icons.chat
                : providerT!.index == 2
                ? Icons.camera_alt_outlined
                :providerT!.index == 0?Icons.done:Icons.add_call,
            color: Colors.white,
            size: 20,
          ),
          backgroundColor: Color(0xff008069)
      ),
    );
  }

  Widget chat(int index)
  {
    return ListTile(

      leading: CircleAvatar(
        radius: 22,
        backgroundImage: AssetImage("${providerT!.chatlist[index].img}"),
      ),
      title: Text("${providerT!.chatlist[index].name}",style: TextStyle(
          fontSize: 20,fontWeight: FontWeight.w400),),
      subtitle: Text("${providerT!.chatlist[index].message}",style: TextStyle(
          fontSize: 15,color: Colors.black38),),
      trailing: Text("${providerT!.chatlist[index].time}",style: TextStyle(
          fontSize: 13,color: Colors.black26),),
    );
  }

}


