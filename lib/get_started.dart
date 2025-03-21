import 'package:car_rental_system/core/util/color_utils.dart';
import 'package:car_rental_system/core/util/route_const.dart';
import 'package:car_rental_system/core/util/route_generator.dart';
import 'package:car_rental_system/core/util/string_utils.dart';
import 'package:car_rental_system/widgets/custom_elevatedbutton.dart';
import 'package:car_rental_system/widgets/custom_inkwell.dart';
import 'package:car_rental_system/widgets/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({super.key});

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                          height: 80,
                      ),
                      Image.asset(letsStartImagePath ),
                      SizedBox(
                          height: 60,
                      ),
                       CustomText(
                          data: getStartedTitleStr,
                          fontSize: 30,
                      ),
                      SizedBox(
                          height: 25,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: CustomText(
                            data: getStartedSubTitleStr,
                        ),
                      ),
                      SizedBox(
                          height:  30,
                      ),
                      CustomElevatedbutton(onPressed: (){
RouteGenerator.navigateToPage(context, Routes.signupRoute);
                      },
                       child: Text(registerStr)),
                        SizedBox(
                          height:  30,
                      ),
                  
                      Row(
                        children: [
                              Spacer(),
                          CustomText(data: alreadyHaveAccountStr),
                          CustomInkwell(
                            child: CustomText(data: loginStr,
                            color: primaryColor,),
                            onTap: (){
                              RouteGenerator.navigateToPage(context, Routes.loginRoute);
                            },
                          ),
                              Spacer(),
                        ],
                      )
                  ],
              ),
            ),
          ),
        ),
    );
  }
}
