import 'package:car_rental_system/core/util/route_const.dart';
import 'package:car_rental_system/core/util/route_generator.dart';
import 'package:car_rental_system/core/util/string_utils.dart';
import 'package:car_rental_system/widgets/custom_back_page_icon.dart';
import 'package:car_rental_system/widgets/custom_elevatedbutton.dart';
import 'package:car_rental_system/widgets/custom_text.dart';
import 'package:car_rental_system/widgets/custom_textformfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
   final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomBackPageIcon(),
                SizedBox(height: 20),
                Center(
                  child: CustomText(
                    data: forgetPasswordStr,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                // CustomText(data: emailAddressStr),
                CustomTextformfield(
                  labelText: emailAddressStr,
                  hintText: emailAddressPlaceStr,
                
                ),
                SizedBox(height: 20,),
                CustomElevatedbutton(
                  onPressed: (){
                    RouteGenerator.navigateToPage(context, Routes.enterOtpRoute);
                  },
                  height: 60,
                 child: CustomText(data: sendCodeStr))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
