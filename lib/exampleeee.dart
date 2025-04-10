// import 'package:car_rental_system/core/util/color_utils.dart';
// import 'package:car_rental_system/core/util/spin_kit.dart';
// import 'package:car_rental_system/core/util/string_utils.dart';
// import 'package:car_rental_system/model/car.dart';
// import 'package:car_rental_system/widgets/custom_back_page_icon.dart';
// import 'package:car_rental_system/widgets/custom_searchbar.dart';
// import 'package:car_rental_system/widgets/custom_text.dart';
// import 'package:car_rental_system/widgets/padding_for_all_pages.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';

// class ViewCarListScreen extends StatefulWidget {
//   const ViewCarListScreen({super.key});

//   @override
//   State<ViewCarListScreen> createState() => _ViewCarListScreenState();
// }

// class _ViewCarListScreenState extends State<ViewCarListScreen> {
//   bool loader = false;
//   bool emptyList = false;
//   List<Car> preCarsList = [];
//   List<Car> carsList = [];

//   @override
//   void initState() {
//     super.initState();
//     fetchCarDetails();
//   }

//   void fetchCarDetails() {
//     setState(() {
//       loader = true;
//     });

//     FirebaseFirestore firestore = FirebaseFirestore.instance;
//     try {
//       firestore.collection("cars").get().then((value) {
//         if (value.docs.isNotEmpty) {
//           setState(() {
//             preCarsList =
//                 value.docs.map((doc) {
//                   var car = Car.fromJson(doc.data());
//                   car.id = doc.id; // Assuming the Car model has an 'id' field
//                   return car;
//                 }).toList();
//             carsList = preCarsList;
//             emptyList = false;
//           });
//         } else {
//           setState(() {
//             carsList = preCarsList = List.empty();
//             emptyList = true;
//           });
//           // // ignore: use_build_context_synchronously
//           // DisplaySnackbar.show(context, noCarFoudStr, isError: true);
//         }
//         setState(() {
//           loader = false;
//         });
//       });
//     } catch (e) {
//       setState(() {
//         loader = false;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           // Container(
//           //   height: MediaQuery.of(context).size.height,

//           //   decoration: BoxDecoration(
//           //     color: const Color.fromARGB(255, 248, 250, 252),
//           //     //         borderRadius:      BorderRadius.only(bottomLeft:
//           //     // Radius.circular(500)
//           //   ),
//           // ),
//           Container(
//             height: MediaQuery.of(context).size.height * 0.25,
//             decoration: BoxDecoration(
//               color: primaryColor,
//               borderRadius: BorderRadius.only(bottomLeft: Radius.circular(800)),
//             ),
//           ),

//           Positioned(
//             top: MediaQuery.of(context).size.height * 0.25,
//             child: Container(
//               height: MediaQuery.of(context).size.height * 0.75,
//               width: MediaQuery.of(context).size.width,
//               decoration: BoxDecoration(
//                 color: greyColor,
//                 borderRadius: BorderRadius.only(topLeft: Radius.circular(500)),
//               ),
//             ),
//           ),

//           ui(context),
//           loader ? Loader.backdropFilter(context) : const SizedBox(),
//         ],
//       ),
//     );
//   }

//   Widget ui(BuildContext context) {
//     return SafeArea(
//       child: PaddingForAllPages(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Column(
//             children: [
//               Row(
//                 children: [
//                   CustomBackPageIcon(),
//                   Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: CustomText(
//                       data: viewCarDetailsStr,
//                       fontSize: 20,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ],
//               ),

//               SizedBox(height: 20),
//               CustomSearchbar(
//                 onChanged: (value) {
//                   setState(() {
//                     carsList =
//                         preCarsList
//                             .where(
//                               (car) =>
//                                   (car.carName?.toLowerCase() ?? '').contains(
//                                     value.toLowerCase(),
//                                   ) ||
//                                   (car.carBrand?.toLowerCase() ?? '').contains(
//                                     value.toLowerCase(),
//                                   ),
//                             )
//                             .toList();
//                     if (carsList.isEmpty) {
//                       emptyList = true;
//                     } else {
//                       emptyList = false;
//                     }
//                   });
//                 },
//               ),
//               SizedBox(height: 10),
//               SizedBox(
//                 height: 400,
//                 child: ListView.builder(
//                   itemCount: 5,
//                   itemBuilder: (context, index) {
//                     return Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Row(
//                           children: [
//                             ClipRRect(
//                               borderRadius: BorderRadius.circular(10),
//                               child: Image.network(
//                                 carsList[index].imageUrl ??
//                                     carPlaceholderImageUrl,
//                                 width: MediaQuery.of(context).size.width * 0.5,
//                                 height:
//                                     MediaQuery.of(context).size.height * 0.2,
//                                 fit: BoxFit.cover,
//                                 errorBuilder: (context, error, stackTrace) {
//                                   return Container(
//                                     width:
//                                         MediaQuery.of(context).size.width * 0.5,
//                                     height:
//                                         MediaQuery.of(context).size.height *
//                                         0.2,
//                                     color: Colors.grey[300],
//                                     child: const Icon(Icons.error),
//                                   );
//                                 },
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     );
//                   },
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
