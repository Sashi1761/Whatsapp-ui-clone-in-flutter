import 'package:flutter/material.dart';
import 'package:whatsappui/colors.dart';

import '../info.dart';

class MobileChatScreen extends StatelessWidget {
  const MobileChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text(info[0]['name'].toString()),
        centerTitle: false,
        actions: [
            IconButton.outlined(onPressed: (){}, icon: Icon(Icons.video_call)),
            IconButton.outlined(onPressed: (){}, icon: Icon(Icons.call)),
            IconButton.outlined(onPressed: (){}, icon: Icon(Icons.more_vert)),
        ],
      ),
      body: Column(
        //chatlist
    
           // text input
    
      ),
    );
  }
}