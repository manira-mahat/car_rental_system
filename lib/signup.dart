import 'package:car_rental_system/core/util/color_utils.dart';
import 'package:car_rental_system/core/util/route_const.dart';
import 'package:car_rental_system/core/util/route_generator.dart';
import 'package:car_rental_system/core/util/spin_kit.dart';
import 'package:car_rental_system/core/util/string_utils.dart';
import 'package:car_rental_system/widgets/custom_elevatedbutton.dart';
import 'package:car_rental_system/widgets/custom_image_assets.dart';
import 'package:car_rental_system/widgets/custom_inkwell.dart';
import 'package:car_rental_system/widgets/custom_text.dart';
import 'package:car_rental_system/widgets/custom_textformfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
<<<<<<< HEAD
    final _formKey = GlobalKey<FormState>();
      bool loader=false;
=======
  final _formKey = GlobalKey<FormState>();
  bool loader = false;
>>>>>>> 396570f (loaderdoing)
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: Icon(Icons.close)),
      body: Stack(
        children: [
          ui(),
          loader ? Loader.backdropFilter(context) : const SizedBox(),
        ],
      ),
<<<<<<< HEAD
      body:Stack(
        children: [
          ui(),
      loader ? Loader.backdropFilter(context): const SizedBox(),

        ],
      )
    );
  }
  Widget ui()=> SingleChildScrollView(
    child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Form(
                key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
              Center(
                child: CustomText(data: createAccountStr,
                fontSize: 25,
                fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              CustomText(data: nameStr,
              fontSize: 20,
              fontWeight: FontWeight.bold,),
              CustomTextformfield(
                labelText: namePlaceStr,
              ),
              SizedBox(
                height: 10,
              ),
              CustomText(data: emailAddressStr,
              fontSize: 20,
              fontWeight: FontWeight.bold,),
              CustomTextformfield(
                labelText: emailAddressPlaceStr,
              ),
              SizedBox(
                height: 10,
              ),
              CustomText(data: passwordStr,
              fontSize: 20,
              fontWeight: FontWeight.bold,),
              CustomTextformfield(
                labelText: passwordPlaceStr,
                suffixIcon: IconButton(onPressed: (){
            
                }, icon:Icon(Icons.visibility))
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Spacer(),
                  IconButton(onPressed: (){
            
                  }, icon: Icon(Icons.check_box)),
                  CustomText(data: aggreeStr),
                  Spacer()
                ],
              ),
              SizedBox(
                height: 15,
              ),
              CustomElevatedbutton(onPressed: (){
            
              }, child: Text(registerStr ,style: TextStyle(color: Colors.white),)),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Spacer(),
                  Text("Or"),
                  Spacer()
                ],
              ),
               SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Spacer(),
                  CustomText(data: alreadyHaveAccountStr),
                  CustomInkwell(
                    child: CustomText(data: loginStr,color: primaryColor,
                    ),
            onTap: () {
              RouteGenerator.navigateToPage(context, Routes.loginRoute);
            },
                  ),
                  Spacer()
                ],
              )
              ],
            ),
          ),
        ),
  );
}
=======
    );
  }

  Widget ui() => Form(
    key: _formKey,
    child: Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          Center(
            child: CustomText(
              data: createAccountStr,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          CustomText(data: nameStr, fontSize: 20, fontWeight: FontWeight.bold),
          CustomTextformfield(labelText: namePlaceStr),
          SizedBox(height: 10),
          CustomText(
            data: emailAddressStr,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          CustomTextformfield(labelText: emailAddressPlaceStr),
          SizedBox(height: 10),
          CustomText(
            data: passwordStr,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          CustomTextformfield(
            labelText: passwordPlaceStr,
            suffixIcon: IconButton(
              onPressed: () {},
              icon: Icon(Icons.visibility),
            ),
          ),
          SizedBox(height: 15),
          Row(
            children: [
              Spacer(),
              IconButton(onPressed: () {}, icon: Icon(Icons.check_box)),
              CustomText(data: aggreeStr),
              Spacer(),
            ],
          ),
          SizedBox(height: 15),
          CustomElevatedbutton(
            onPressed: () {},
            child: Text(registerStr, style: TextStyle(color: Colors.white)),
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
                child: CustomImageAssets(name: facebookLogoPath, height: 40),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Spacer(),
              CustomText(data: alreadyHaveAccountStr),
              CustomInkwell(
                child: CustomText(data: loginStr, color: primaryColor),
                onTap: () {
                  RouteGenerator.navigateToPage(context, Routes.loginRoute);
                },
              ),
              Spacer(),
            ],
          ),
        ],
      ),
    ),
  );
}
>>>>>>> 396570f (loaderdoing)
