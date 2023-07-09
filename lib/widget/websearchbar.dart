import 'package:flutter/material.dart';
import 'package:whatsappui/colors.dart';

class webSearchBar extends StatelessWidget {
  const webSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.06,
      width: MediaQuery.of(context).size.width*0.06,
      padding:  EdgeInsets.all(10),
      decoration:const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: dividerColor,
          )
         )
       ),
       child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: searchBarColor,
          prefixIcon:  Padding(padding:EdgeInsets.symmetric(horizontal: 20),
          child: Icon(Icons.search, size: 20,),
          ),
          hintStyle: const TextStyle(fontSize: 14),
          hintText: 'search or start a new chat',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(
              width: 0,
              style: BorderStyle.none,
            )
          ),
          contentPadding: EdgeInsets.all(10),
           ),
       ),

    );
  }
}