import 'package:car_rental_system/core/util/string_utils.dart';
import 'package:car_rental_system/widgets/custom_elevatedbutton.dart';
import 'package:car_rental_system/widgets/custom_image_assets.dart';
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
  bool visible = false;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                CustomText(
                  data: welcomeBackStr,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
                SizedBox(height: 20),
                CustomText(
                  data: emailAddressStr,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                CustomTextformfield(labelText: emailAddressPlaceStr),
                SizedBox(height: 20),
                CustomText(
                  data: passwordStr,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                CustomTextformfield(
                  labelText: passwordPlaceStr,
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
                    IconButton(onPressed: () {}, icon: Icon(Icons.check_box)),
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
                  onPressed: () {},
                  child: CustomText(data: loginStr, color: Colors.white),
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
                      child: CustomImageAssets(name: facebookLogoPath),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
