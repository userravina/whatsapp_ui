import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Modal/call_modal.dart';
import '../Modal/whatsapp_modal.dart';

class what_provider extends ChangeNotifier
{
   List<Whatsapp_modal> chatlist = [
   Whatsapp_modal(name: 'Dhruvi',time: '3:00 AM',message: 'Hey,how are you doing',img:'assets/images/cartun5.jpg'),
   Whatsapp_modal(name: 'Nisha',time: '6.00 AM', message: 'Hello,whats up',img: 'assets/images/cartun2.jpg'),
   Whatsapp_modal(name: 'varj',time: '2.03 PM',message: 'Call me,have some work',img: 'assets/images/cartun3.png' ),
   Whatsapp_modal(name: 'priya',time: '1.03 PM',message: 'hey how are you',img: 'assets/images/cartun4.jpg' ),
   Whatsapp_modal(name: 'mom',time: '5.67 AM',message: 'you ate food',img: 'assets/images/cartun7.jpg' ),
   Whatsapp_modal(name: 'Dad',time: '11. AM',message: 'Call me,have some work',img: 'assets/images/cartun5.jpg' ),
   Whatsapp_modal(name: 'onlymy',time: '1.00 PM',message: 'hellow I am good',img: 'assets/images/cartun8.jpg' ),
   Whatsapp_modal(name: 'ravi',time: '9.55 AM',message: "let's go",img: 'assets/images/cartun9.jpg' ),
];
   List<Whatsapp_modal> statuslist = [
      Whatsapp_modal(name: 'Dhruvi',time: '2 minutes ago',img:'assets/images/cartun5.jpg'),
   ];
   Icon call = Icon(Icons.call,color: Colors.green);
   Icon video = Icon(Icons.videocam_rounded,color: Colors.green);
   Icon receive = Icon(Icons.call_received_rounded);
   Icon made = Icon(Icons.call_made_rounded,color: Colors.green);

   List<Call_Model> calllist = [
      Call_Model(name: 'Dhruvi', calltype: Icon(Icons.call_received_rounded,color: Colors.red,size: 15,), img: 'assets/images/cartun5.jpg',time: '3:53 PM', medium: Icon(Icons.videocam_rounded,color: Colors.green),),
      Call_Model(name: 'Nisha', calltype: Icon(Icons.call_made_rounded,color: Colors.green,size: 15,), img: 'assets/images/cartun2.jpg',time: '2:25 AM', medium: Icon(Icons.call_rounded,color: Colors.green),),
      Call_Model(name: 'varj', calltype: Icon(Icons.call_received_rounded,color: Colors.red,size: 15,), img: 'assets/images/cartun3.png',time: '1:03 PM', medium: Icon(Icons.videocam_rounded,color: Colors.green),),
      Call_Model(name: 'priya', calltype: Icon(Icons.call_made_rounded,color: Colors.green,size: 15,), img: 'assets/images/cartun4.jpg',time: '12:06 AM', medium: Icon(Icons.call_rounded,color: Colors.green),),
      Call_Model(name: 'mom', calltype: Icon(Icons.call_received_rounded,color: Colors.red,size: 15,), img: 'assets/images/cartun7.jpg',time: '8:12 AM', medium: Icon(Icons.videocam_rounded,color: Colors.green),),
      Call_Model(name: 'Dad', calltype: Icon(Icons.call_made_rounded,color: Colors.green,size: 15,), img: 'assets/images/cartun8.jpg',time: '9:10 AM', medium: Icon(Icons.call_rounded,color: Colors.green),),
      Call_Model(name: 'onlymy', calltype: Icon(Icons.call_received_rounded,color: Colors.red,size: 15,), img: 'assets/images/cartun9.jpg',time: '5:55 AM', medium: Icon(Icons.videocam_rounded,color: Colors.green),),
      Call_Model(name: 'ravi', calltype: Icon(Icons.call_made_rounded,color: Colors.green,size: 15,), img: 'assets/images/cartun5.jpg',time: '5:30 AM', medium: Icon(Icons.call_rounded,color: Colors.green),),

   ];
   int index=1;
   void changeicon(int value)
   {
      index=value;
      notifyListeners();
   }
}