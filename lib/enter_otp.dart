import 'package:car_rental_system/core/util/color_utils.dart';
import 'package:car_rental_system/core/util/display_snackbar.dart';
import 'package:car_rental_system/core/util/string_utils.dart';
import 'package:car_rental_system/widgets/custom_back_page_icon.dart';
import 'package:car_rental_system/widgets/custom_elevatedbutton.dart';
import 'package:car_rental_system/widgets/custom_inkwell.dart';
import 'package:car_rental_system/widgets/custom_text.dart';
import 'package:email_otp/email_otp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class EnterOtp extends StatefulWidget {
  const EnterOtp({super.key});

  @override
  State<EnterOtp> createState() => _EnterOtpState();
}

class _EnterOtpState extends State<EnterOtp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomBackPageIcon(),
              SizedBox(height: 20),
              Center(
                child: CustomText(
                  data: verifyAccountStr,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              PinCodeTextField(
                showCursor: true,
                cursorColor: primaryColor,
                appContext: context,
                length: 5,
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(8), // Slightly circular
                  fieldHeight: 50,
                  fieldWidth: 40,
                  activeColor: const Color(
                    0x1F999999,
                  ), // Active pin (current pin) border color
                  inactiveColor: const Color(
                    0x1F999999,
                  ), // Inactive pins border color
                  selectedColor:
                      primaryColor, // Color when pin is selected (focused)
                  // activeFillColor: Colors.white, // Fill color for the active pin
                  // inactiveFillColor: Colors.white, // Fill color for the inactive pins
                  // selectedFillColor: Colors.white, // Fill color when the pin is selected
                ),
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(data: didntReceiveOtpStr,
                  fontSize: 15,),
                  CustomInkwell(
                    child: CustomText(
                      fontSize: 20,
                      data: resendOtpStr,
                      color: primaryColor,
                    ),
                    onTap: () {
                      
                    },
                    // onTap: () async {
                    //   // Resend OTP logic here
                    //   if (await EmailOTP.sendOTP(
                    //     email: widget.email,
                    //   )) {
                    //     DisplaySnackbar.show(
                    //         context, "OTP resent to ${widget.email}");
                    //   } else {
                    //     DisplaySnackbar.show(
                    //         context, "Failed to resend OTP to ${widget.email}");
                    //   }
                    // },
                  )
                ],
              ),
               SizedBox(height: 10,),
               CustomElevatedbutton(onPressed: (){}, 
               child: CustomText(data: verifyAccountStr))
            ],
          ),
        ),
      ),
    );
  }
}
