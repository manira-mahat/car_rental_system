import 'dart:ui';

import 'package:car_rental_system/core/util/color_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loader {
  static backdropFilter(context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 4, sigmaY: 3),
      child: Stack(
        children: [
          const Center(
            child: SpinKitCircle(color: primaryColor),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            color: Colors.white.withOpacity(0),
          ),
        ],
      ),
    );
  }
}