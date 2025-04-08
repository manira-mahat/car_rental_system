import 'package:car_rental_system/core/util/color_utils.dart';
import 'package:flutter/material.dart';

class CustomElevatedbutton extends StatelessWidget {
  Function()? onPressed;
  Widget? child;
  Color? backgroundColor;
double? width;
  // double? height;
  CustomElevatedbutton({super.key,required this.onPressed,required this.child, this.backgroundColor,this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 60,
        width: width??MediaQuery.of(context).size.width,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
              backgroundColor:backgroundColor?? primaryColor,
              foregroundColor: Colors.white,
             
              textStyle: TextStyle(fontSize: 15),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15))),
          child: child,
        ));
  }
}