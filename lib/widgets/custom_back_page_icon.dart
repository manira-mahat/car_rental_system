import 'package:car_rental_system/core/util/route_generator.dart';
import 'package:car_rental_system/widgets/custom_border_icon_button.dart';
import 'package:flutter/material.dart';

class CustomBackPageIcon extends StatelessWidget {
   IconData? icon;
  CustomBackPageIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child:
      CustomBorderIconButton(onPressed:  () {
          Navigator.pop(context);
          }, icon: Icons.arrow_back,
          color: Colors.black,) 
     
    );
  }
}