import 'package:flutter/material.dart';
import 'package:whatsappui/colors.dart';
import 'package:whatsappui/screens/mobilechatscreen.dart';

import '../info.dart';

class Contactkolist extends StatelessWidget {
  const Contactkolist({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        children: [
          Expanded(
            
            child: SingleChildScrollView(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: info.length,
                itemBuilder: ((context, index) {
                  return InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const MobileChatScreen()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(bottom:8.0),
                      child: ListTile(
                        title: Text(info[index]['name'].toString(),style: TextStyle(fontSize: 16)),
                        subtitle: Padding(padding: EdgeInsets.only(top:6),
                        child: Text(info[index]['message'].toString(),style: TextStyle(fontSize: 16),
                        ),
                        ),
                        leading: CircleAvatar(backgroundImage: NetworkImage(
                          info[index]['profilePic'].toString()
                        ),
                        radius: 30,
                        ),
                        trailing: Text(info[index]['time'].toString(),style: const TextStyle(fontSize: 16, color: Colors.grey)),
                      ),
                    ),
                  );
                })
              ),
            ),
          ),
          const Divider(
            color: dividerColor,indent: 85,
          )
        ],
      ),
      
    );
  }
}