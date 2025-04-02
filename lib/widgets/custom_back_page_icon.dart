import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomBackPageIcon extends StatelessWidget {
  IconData? icon;
 CustomBackPageIcon({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.25,
      child: IconButton(onPressed: (){
      
      },
       icon: Icon(icon)),
    );
  }
}