import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Provider/Whatsapp_provider.dart';

class Status extends StatefulWidget {
  const Status({Key? key}) : super(key: key);

  @override
  State<Status> createState() => _StatusState();
}

class _StatusState extends State<Status> {
  what_provider? providerT;
  what_provider? providerF;
  @override
  Widget build(BuildContext context) {
    providerT = Provider.of<what_provider>(context,listen:true);
    providerF = Provider.of<what_provider>(context,listen:false);
    return Scaffold( body: Stack(
      alignment: Alignment(0.88,0.67),
      children: [
        Column(
          children: [
            ListTile(
              leading: Stack(
                alignment: Alignment(1.6,1.0),
                children: [
                  CircleAvatar(child: Icon(Icons.person),backgroundColor: Colors.green,radius: 25,),
                  Container(
                    alignment: Alignment.center,
                    height: 21,width: 25,
                    decoration: BoxDecoration(color: Colors.green,
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white,width: 2)
                    ),
                    child: Icon(Icons.add,color: Colors.white,size: 20,),
                  )

                ],),
              title: Text("My status",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18),),
              subtitle: Text("Tap to add status update",style: TextStyle(color: Colors.black45),),
            ),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) => Statustile(index),
                itemCount: providerT!.statuslist.length,
              ),
            ),
          ],
        ),
        Container(height: 50,width: 50,
          decoration: BoxDecoration(
              color: Colors.blueGrey.shade50,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(color: Colors.blueGrey.shade100,blurRadius: 20)
              ]
          ),
          child: Icon(Icons.edit,color: Colors.black54,),
        ),

      ],
    ),floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          providerT!.index == 0
              ? Icons.chat
              : providerT!.index == 1
              ? Icons.camera_alt_outlined
              :providerT!.index == 2?Icons.done:Icons.add_call,
          color: Colors.white,
          size: 20,
        ),
        backgroundColor: Color(0xff008069)
    ),
    );
  }

  Widget Statustile(int index) {
    return ListTile(
      leading: CircleAvatar(
        radius: 22,
        backgroundImage: AssetImage("${providerT!.chatlist[index].img}"),
      ),
      title: Text(
        "${providerT!.chatlist[index].name}",
        style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
      ),
      subtitle: Text(
        "${providerT!.chatlist[index].time}",
        style: TextStyle(color: Colors.black45,fontWeight: FontWeight.w400),
      ),
    );
  }
  }

