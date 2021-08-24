import 'package:complete_flutter_ecomerce/modules/profile/components/profile_menu.dart';
import 'package:complete_flutter_ecomerce/modules/profile/components/profile_pic.dart';
import 'package:flutter/material.dart';

class ScreenBody extends StatelessWidget {
  const ScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          ProfilePic(),
          SizedBox(
            height: 20.0,
          ),
          ProfileMenu(
            icon: 'assets/icons/User.svg',
            text: 'My Account',
            press: () {},
          ),
          ProfileMenu(
            icon: 'assets/icons/Bell.svg',
            text: 'Notifications',
            press: () {},
          ),
          ProfileMenu(
            icon: 'assets/icons/Settings.svg',
            text: 'Settings',
            press: () {},
          ),
          ProfileMenu(
            icon: 'assets/icons/Question mark.svg',
            text: 'Help Center',
            press: () {},
          ),
          ProfileMenu(
            icon: 'assets/icons/Log out.svg',
            text: 'Log Out',
            press: () {},
          ),
        ],
      ),
    );
  }
}
