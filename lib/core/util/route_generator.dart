import 'package:car_rental_system/add_car_form.dart';
import 'package:car_rental_system/bottom_navbar.dart';
import 'package:car_rental_system/core/util/route_const.dart';
import 'package:car_rental_system/get_started.dart';
import 'package:car_rental_system/home.dart';
import 'package:car_rental_system/login.dart';
import 'package:car_rental_system/signup.dart';
// import 'package:car_rental_system/login.dart';
// import 'package:car_rental_system/role_selection.dart';
// import 'package:car_rental_system/signup.dart';
// import 'package:car_rental_system/welcome.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static navigateToPage(BuildContext context, String route,
      {dynamic arguments}) {
    Navigator.push(context,
        generateRoute(RouteSettings(name: route, arguments: arguments)));
  }

  static navigateToPageWithoutStack(BuildContext context, String route,
      {dynamic arguments}) {
    Navigator.pushAndRemoveUntil(
        context,
        generateRoute(RouteSettings(name: route, arguments: arguments)),
        (route) => false);
  }

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) => const Login());
      case Routes.signupRoute:
        return MaterialPageRoute(builder: (_) => const Signup());
      // case Routes.roleSelectionRoute:
      //   return MaterialPageRoute(builder: (_) => const RoleSelection());
      case Routes.getStartedRoute:
        return MaterialPageRoute(builder: (_) => const GetStarted());
      case Routes.buttomNavbarRoute:
      return MaterialPageRoute(builder: (_) => const BottomNavbar1());
      case Routes.homeRoute:
      return MaterialPageRoute(builder: (_) => const Home());
      case Routes.addCarDetailsRoute:
      return MaterialPageRoute(builder: (_) => const AddCarForm());
      default:

        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}