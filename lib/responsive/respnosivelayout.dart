import 'package:flutter/material.dart';


class responsivedesign extends StatelessWidget {
  final Widget mobileScreenLayout;
  final Widget webScreenLayout;
  const responsivedesign({super.key, required this.mobileScreenLayout, required this.webScreenLayout});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints){
        if(constraints.maxWidth>900)
        //show web screen
        {
            return webScreenLayout;
        }
        //show mobile screen
        return mobileScreenLayout;
      },
    );
  }
}