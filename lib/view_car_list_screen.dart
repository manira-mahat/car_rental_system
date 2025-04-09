import 'package:car_rental_system/core/util/color_utils.dart';
import 'package:car_rental_system/core/util/string_utils.dart';
import 'package:car_rental_system/widgets/custom_back_page_icon.dart';
import 'package:car_rental_system/widgets/custom_searchbar.dart';
import 'package:car_rental_system/widgets/custom_text.dart';
import 'package:car_rental_system/widgets/padding_for_all_pages.dart';
import 'package:flutter/material.dart';

class ViewCarListScreen extends StatefulWidget {
  const ViewCarListScreen({super.key});

  @override
  State<ViewCarListScreen> createState() => _ViewCarListScreenState();
}

class _ViewCarListScreenState extends State<ViewCarListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Container(
          //   height: MediaQuery.of(context).size.height,

          //   decoration: BoxDecoration(
          //     color: const Color.fromARGB(255, 248, 250, 252),
          //     //         borderRadius:      BorderRadius.only(bottomLeft:
          //     // Radius.circular(500)
          //   ),
          // ),
          Container(
            height: MediaQuery.of(context).size.height * 0.25,
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(800),
              ),
            ),
          ),

          Positioned(
            top: MediaQuery.of(context).size.height * 0.25 ,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.75,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: greyColor,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(500)),
              ),
            ),
          ),

          ui(context),
        ],
      ),
    );
  }

  Widget ui(BuildContext context) {
    return SafeArea(
      child: PaddingForAllPages(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
           CustomBackPageIcon(),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: CustomText(data: viewCarDetailsStr,
             fontSize: 20,
             fontWeight: FontWeight.bold,),
           )
              ],),
          
              SizedBox(
                height: 10,
              ),
              CustomSearchbar()
                 
            ],
          ),
        ),
      ),
    );
  }
}
