import 'package:car_rental_system/core/util/color_utils.dart';
import 'package:car_rental_system/core/util/display_snackbar.dart';
import 'package:car_rental_system/core/util/route_generator.dart';
import 'package:car_rental_system/core/util/string_utils.dart';
import 'package:car_rental_system/model/car.dart';
import 'package:car_rental_system/widgets/custom_caroverview_container.dart';
import 'package:car_rental_system/widgets/custom_elevatedbutton.dart';
import 'package:car_rental_system/widgets/custom_icon_button.dart';
import 'package:car_rental_system/widgets/custom_icons.dart';
import 'package:car_rental_system/widgets/custom_searchbar.dart';
import 'package:car_rental_system/widgets/custom_text.dart';
import 'package:car_rental_system/widgets/custom_textformfield.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
 List<Car> carsList = [];
  bool loader = false;

  @override
  void initState() {
    super.initState();
    fetchCarDetails();
  }

  void fetchCarDetails() {
    setState(() {
      loader = true;
    });

    FirebaseFirestore firestore = FirebaseFirestore.instance;

    firestore.collection("cars").get().then((value) {
      if (value.docs.isNotEmpty) {
        setState(() {
         carsList = value.docs.map((doc) => Car.fromJson(doc.data())).toList();
          //value.docs get the list of json data from collection named cars
         // value.docs[0].data()  gets value odf 0 index in json format
         // we have multiple value sp we  used for each loop
         //here is the for each loop like value.docs.map((doc)=>Car.fromJson(doc.data())).toList());
         //in above loop value.docs contains list of json of cars collection
         //doc is the name of variable
         //in doc.data() we have the value of 0 index of value.docs list which contain data in json format
         // by usnig CAR.fromJson fucntion we convert json format data to object of class named Car
         //so out carlist contains the list of objects of car class


          loader = false;
        });
      } else {
        setState(() {
          loader = false;
        });
        DisplaySnackbar.show(context, "No values");
      }
    }).catchError((e) {
      setState(() {
        loader = false;
      });
      DisplaySnackbar.show(context, e.toString());
    });
  }



  List<TopBrandCars> topBrandsCarsList=[
TopBrandCars(
  "https://thumbs.dreamstime.com/b/logo-bmw-formato-ai-aviable-di-vettore-colore-dell-automobile-239595216.jpg",
   "BMW"),
   TopBrandCars(
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2WazG9ogzCX-edCo-gI8grlP6RMHwR7otmg&s",
   "Audi"),
   TopBrandCars(
  "https://i.pinimg.com/736x/92/cb/cb/92cbcbe29a015a8452a731a284fa9e29.jpg",
   "Lexus"),
   TopBrandCars(
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQC7XzIu18WCc5zaiQUIwR_SLzdiUzRhdhuQ&s",
   "Tesla"),
   TopBrandCars(
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQC-gXdqyv0g-IYu2AhbDJLMGnauaBnKlwOIA&s",
   "Mercedes"),
   TopBrandCars(
  "https://global.toyota/pages/global_toyota/mobility/toyota-brand/emblem_001.jpg",
   "Toyota"),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(data: locationStr,
                        fontSize: 18,),
                        Row(
                          children: [
                            CustomIcons(
                              icon: Icons.location_on_outlined,
                              color: primaryColor,
                              ),
                              CustomText(data: "New York, USA",
                              fontSize: 18,
                              fontWeight: FontWeight.bold,)
                          ],
                        )

                      ],
                    ),
                    Spacer(),
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: greyColor,
                      child: CircleAvatar(
                        radius: 23,
                        backgroundColor: Colors.white,
                        child: CustomIconButton(onPressed: (){},
                         icon: Icons.notifications_none_outlined,
                         color: greyColor,),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 10),
                  child: Row(
                    children: [
                     Flexible(
                      flex: 6,
                       child: CustomSearchbar(
                        hintText: searchCarBarStr,
                         readOnly: true,
                         onTap: () {
                          //  RouteGenerator.navigateToPage(context, route)
                         },
                       ),
                     ),
                     SizedBox(
                      width: MediaQuery.of(context).size.width*0.05,
                     ),
                     Expanded(
                       child: CustomElevatedbutton(
                        onPressed: () {
                          print("Filter button pressed");
                          },
                        child: CustomIcons(
                          icon: Icons.filter_list_alt
                          )
                          ),
                     )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                CustomText(
                  data: topBrandsStr,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  ),
                  SizedBox(
                  height: 10,
                ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height*0.13,
                    width: MediaQuery.of(context).size.width,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: topBrandsCarsList.length,
                      itemBuilder: (context,index){
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 35,
                            backgroundColor:const Color.fromARGB(97, 223, 176, 176) ,
                            child: Image.network(topBrandsCarsList[index].image),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          CustomText(
                            data: topBrandsCarsList[index].name
                            )
                        ],
                      ),
                    );
                      }
                      ),
                  ),
                  // SizedBox(
                  //   height: 5,
                  // ),
                  Row(
                    children: [
                      CustomText(data: popularCarStr,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,),
                      Spacer(),
                      CustomText(data: seeAllStr,
                      fontSize: 22,
                      color: primaryColor,)
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.47,
                    child: ListView.builder(
                      itemCount: carsList.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context,index){
                    return CustomCarOverviewContainer(
                      logoUrl:"https://assets.designhill.com/design-blog/wp-content/uploads/2024/02/4.jpg",
                       carImageUrl: "https://cdn.globalcarsbrands.com/wp-content/uploads/2022/01/Danish-Car-Brands.jpg",
                     carName: carsList[index].carName ?? "car name", 
                                               rating: "4.5",
                          fuelCapacity: carsList[index].fuelCapacity ?? "",
                          carType: carsList[index].carType ?? "",
                          numberOfPeople: carsList[index].passengerCapacity ?? "",
                          price: carsList[index].rentPrice ?? "",
);
                    }
                    ),
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TopBrandCars {
  String image;
  String name;
  TopBrandCars(this.image, this.name);
}