// import 'package:car_rental_system/core/util/color_utils.dart';
// import 'package:car_rental_system/core/util/route_const.dart';
// import 'package:car_rental_system/core/util/route_generator.dart';
// import 'package:car_rental_system/core/util/spin_kit.dart';
// import 'package:car_rental_system/core/util/string_utils.dart';
// import 'package:car_rental_system/widgets/custom_back_page_icon.dart';
// import 'package:car_rental_system/widgets/custom_elevatedbutton.dart';
// import 'package:car_rental_system/widgets/custom_image_assets.dart';
// import 'package:car_rental_system/widgets/custom_inkwell.dart';
// import 'package:car_rental_system/widgets/custom_text.dart';
// import 'package:car_rental_system/widgets/custom_textformfield.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// class Signup extends StatefulWidget {
//   const Signup({super.key});

//   @override
//   State<Signup> createState() => _SignupState();
// }

// class _SignupState extends State<Signup> {
//  final TextEditingController _nameController=TextEditingController();
//  final TextEditingController _emailController=TextEditingController();
//  final TextEditingController _passwordController=TextEditingController();
// final _formKey = GlobalKey<FormState>();
//   bool loader = false;
//   bool visible=false;
//  @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//     body: Stack(
//         children: [
//           ui(),
//           loader ? Loader.backdropFilter(context) : const SizedBox(),
//         ],
//       ),
//    );
//   }

//   Widget ui() => Form(
//     key: _formKey,
//     child: SingleChildScrollView(
//       child: Padding(
//         padding:  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//              SizedBox(height: 20),
//             CustomBackPageIcon(),
//             SizedBox(height: 20),
//             Center(
//               child: CustomText(
//                 data: createAccountStr,
//                 fontSize: 25,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             SizedBox(height: 10),
//             CustomText(
//               data: nameStr,
//               fontSize: 20,
//               fontWeight: FontWeight.bold,
//             ),
//             CustomTextformfield(
//               controller: _nameController,
//               labelText: namePlaceStr,
//             validator: (p0) {
//               if(p0==null||p0.isEmpty){
//                 return  validateNamestr;
//               }else if (!nameRegex.hasMatch(p0)){
//                 return validateNameRegxStr;
//               }
//               return null;
//             },),
//             SizedBox(height: 10),
//             CustomText(
//               data: emailAddressStr,
//               fontSize: 20,
//               fontWeight: FontWeight.bold,
//             ),
//             CustomTextformfield(
//               controller: _emailController,
//               labelText: emailAddressPlaceStr,
//               validator: (p0) {
//                 if(p0==null||p0.isEmpty){
// return validateEmailAddressStr;
//                 }else if(!emailRegex.hasMatch(p0)){
//                   return validateEmailAddressRegexStr;
//                 }
//                 return null;
//               },),
//             SizedBox(height: 10),
//             CustomText(
//               data: passwordStr,
//               fontSize: 20,
//               fontWeight: FontWeight.bold,
//             ),
//             CustomTextformfield(
//              obscureText: visible?false:true,
//              controller: _passwordController,
//               labelText: passwordPlaceStr,
//               validator: (p0) {
//                 if (p0==null||p0.isEmpty){
//                   return validatePasswordStr;
//                 }else if(!passwordRegex.hasMatch(p0)){
//                   return validatePasswordRegexStr;
//                 }
//                 return null;
//               },
//               suffixIcon: IconButton(
//                 onPressed: () {},
//                 icon: Icon(Icons.visibility),
//               ),
//             ),
//             SizedBox(height: 15),
//             Row(
//               children: [
//                 Spacer(),
//                 IconButton(onPressed: () {

//                 }, 
//                 icon: Icon(Icons.check_box)),
//                 CustomText(data: agreeTermsAndConditionStr),
//                 Spacer(),
//               ],
//             ),
//             SizedBox(height: 15),
//             CustomElevatedbutton(
//               onPressed: () {},
//               child: Text(registerStr, style: TextStyle(color: Colors.white)),
//             ),
            
//             SizedBox(height: 20),
//             Row(children: [
//               Expanded(child: Divider()), 
//               Text("Or"),
//               Expanded(child: Divider()),]),
//              SizedBox(height: 20),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     CustomElevatedbutton(
//                       onPressed: () {},
//                       width: MediaQuery.of(context).size.width * 0.25,
//                       backgroundColor: Colors.white,
//                       child: CustomImageAssets(name: googleLogoPath),
//                     ),
//                     CustomElevatedbutton(
//                       onPressed: () {},
//                       width: MediaQuery.of(context).size.width * 0.25,
//                       backgroundColor: Colors.white,
//                       child: CustomImageAssets(name: facebookLogoPath,height: 40,),
//                     ),
//                   ],
//                 ),
//             SizedBox(height: 20),
//             Row(
//               children: [
//                 Spacer(),
//                 CustomText(data: alreadyHaveAccountStr),
//                 CustomInkwell(
//                   child: CustomText(data: loginStr, color: primaryColor),
//                   onTap: () {
//                     RouteGenerator.navigateToPage(context, Routes.loginRoute);
//                   },
//                 ),
//                 Spacer(),
//               ],
//             ),
//           ],
//         ),
//       ),
//     ),
//   );
//   }