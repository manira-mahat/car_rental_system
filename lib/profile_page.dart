import 'package:car_rental_system/core/util/string_utils.dart';
import 'package:car_rental_system/widgets/custom_image_assets.dart';
import 'package:car_rental_system/widgets/custom_text.dart';
import 'package:car_rental_system/widgets/padding_for_all_pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PaddingForAllPages(
          child: Column(
            children: [
              Center(
                child: CustomText(data: profileStr,
                isPageTitle: true,),
              ),
              CircleAvatar(
                radius: 250,                child: CustomImageAssets(
                  name: profileLogoPath
                  )
                  )
            ],
          ),
        ),
      ),
    );
  }
}