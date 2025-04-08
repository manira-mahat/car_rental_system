import 'package:car_rental_system/core/util/color_utils.dart';
import 'package:car_rental_system/core/util/route_const.dart';
import 'package:car_rental_system/core/util/route_generator.dart';
import 'package:car_rental_system/core/util/string_utils.dart';
import 'package:car_rental_system/widgets/custom_back_page_icon.dart';
import 'package:car_rental_system/widgets/custom_elevatedbutton.dart';
import 'package:car_rental_system/widgets/custom_image_assets.dart';
import 'package:car_rental_system/widgets/custom_inkwell.dart';
import 'package:car_rental_system/widgets/custom_text.dart';
import 'package:car_rental_system/widgets/custom_textformfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _emailAddressController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool visible = false;
   bool rememberMe = false;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 SizedBox(height: 20),
            CustomBackPageIcon(),
            SizedBox(height: 20),
                SizedBox(height: 20),
                Center(
                  child: CustomText(
                    data: welcomeBackStr,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                SizedBox(height: 20),
                CustomText(
                  data: emailAddressStr,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                CustomTextformfield(
                  controller: _emailAddressController,
                  labelText: emailAddressPlaceStr,
                  validator: (p0) {
                    if(p0==null||p0.isEmpty){
                      return validateEmailAddressStr;
                    }else if(!emailRegex.hasMatch(p0)){
                      return validateEmailAddressRegexStr;
                    }
                    return null;
                  },),
                SizedBox(height: 20),
                CustomText(
                  data: passwordStr,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                CustomTextformfield(
                  controller: _passwordController,
                  labelText: passwordPlaceStr,
                  validator:(p0) {
                    if(p0==null||p0.isEmpty){
                      return validatePasswordStr;
                    }else if(!passwordRegex.hasMatch(p0)){
                      return validatePasswordRegexStr;
                    }
                    return null;
                  },
                  obscureText: visible ? true : false,
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        visible = !visible;
                      });
                    },
                    icon:
                        visible
                            ? Icon(Icons.visibility_outlined)
                            : Icon(Icons.visibility_off_outlined),
                  ),
                ),

                Row(
                  children: [
                    Checkbox(value: rememberMe,
                     onChanged: (bool? value){
                      setState(() {
                        rememberMe=value!?true:false;
                      });
                     }
                     ),
                    CustomText(
                      data: rememberMeStr,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                    Spacer(),
                    CustomText(
                      data: forgetPasswordStr,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ],
                ),
                SizedBox(height: 20),
                CustomElevatedbutton(
                  onPressed: () {
                     RouteGenerator.navigateToPageWithoutStack(context, Routes.buttomNavbarRoute);
                  },
                  child: CustomText(
                    data: loginStr,
                     color: Colors.white),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(child: Divider()),
                    Text("Or"),
                    Expanded(child: Divider()),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomElevatedbutton(
                      onPressed: () {},
                      width: MediaQuery.of(context).size.width * 0.25,
                      backgroundColor: Colors.white,
                      child: CustomImageAssets(name: googleLogoPath),
                    ),
                    CustomElevatedbutton(
                      onPressed: () {},
                      width: MediaQuery.of(context).size.width * 0.25,
                      backgroundColor: Colors.white,
                      child: CustomImageAssets(name: facebookLogoPath,
                      height: 40,),
                    ),
                  ],
                ),
                
                SizedBox(height: 20),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomText(data: dontHaveAccountStr),
                    CustomInkwell(
                      child: CustomText(
                        data: registerStr,
                        color: primaryColor,
                      ),
                      onTap: () {
                        RouteGenerator.navigateToPage(
                            context, Routes.signupRoute);
                      },
                    )
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
