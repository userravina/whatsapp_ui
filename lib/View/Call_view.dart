import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dart:io';
import '../Provider/Whatsapp_provider.dart';

class Call extends StatefulWidget {
  const Call({Key? key}) : super(key: key);

  @override
  State<Call> createState() => _CallState();
}

class _CallState extends State<Call> {
  what_provider? providerT;
  what_provider? providerF;
  @override
  Widget build(BuildContext context) {
    providerT = Provider.of<what_provider>(context,listen:true);
    providerF = Provider.of<what_provider>(context,listen:false);
    return Scaffold(body: Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.teal.shade500,
            radius: 25,child:Transform.rotate(angle: pi/1.3,
            child: Icon(Icons.link_rounded,color: Colors.white,),
          ),),
          title: Text("Create call link",style: TextStyle(fontWeight: FontWeight.bold),),
          subtitle: Text("Share a link for your WhatsApp call",style: TextStyle(color: Colors.black45),),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
          child: Row(
            children: [
              Text("Recent",style: TextStyle(color: Colors.black38),),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(itemBuilder: (context, index) => Call(index),
            itemCount: providerT!.calllist.length,
            scrollDirection: Axis.vertical,
          ),
        )
      ],
    ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(
            providerT!.index == 2
                ? Icons.call
                : providerT!.index == 1
                ? Icons.call
                :providerT!.index == 2?Icons.add_call:Icons.add_call,
            color: Colors.white,
            size: 20,
          ),
          backgroundColor: Color(0xff008069)
      ),
    );
  }

  Widget Call(int index) {
    return ListTile(
      leading: CircleAvatar(
        radius: 22,
        backgroundImage: AssetImage("${providerT!.calllist[index].img}"),
      ),
      title: Text(
        "${providerT!.calllist[index].name}",
        style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18,),
      ),
      subtitle: Row(mainAxisSize: MainAxisSize.min,
        children: [
          providerT!.calllist[index].calltype!,
          Text(
            "${providerT!.calllist[index].time}",
            style: TextStyle(color: Colors.black26),
          ),
        ],
      ),
      trailing: providerT!.calllist[index].medium!,
    );
  }

}
