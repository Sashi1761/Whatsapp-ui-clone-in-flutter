import 'package:flutter/material.dart';
import 'package:whatsappui/widget/contacts.dart';
import 'package:whatsappui/widget/webprofukebar.dart';
import 'package:whatsappui/widget/websearchbar.dart';

class webScreenLayout extends StatelessWidget {
  const webScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
             const  Expanded(
                child:SingleChildScrollView(
                 child: Column(
                    children: [
                      WebprofileBar(),
               
                      //web search bar
                      webSearchBar(),
                      Contactkolist(),
                    ],
                  ),
               ),
               ),
                //web screen
              Container(
                width: MediaQuery.of(context).size.width*0.75,
                  decoration: const BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/backgroundImage.png'),
                    fit: BoxFit.cover,
                     )
                   
                  ),
                ),
              ],
      )
      
    );
  }
}