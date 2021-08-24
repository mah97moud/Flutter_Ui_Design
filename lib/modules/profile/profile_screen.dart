import 'package:complete_flutter_ecomerce/modules/profile/components/screen_body.dart';
import 'package:complete_flutter_ecomerce/shared/components/custom_bottom_nav_bar.dart';
import 'package:complete_flutter_ecomerce/shared/enums.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);
  static String routeName = '/profile';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
        ),
      ),
      body: ScreenBody(),
      bottomNavigationBar: CustomBottomNavBar(
        selectedMenu: MenuState.profile,
      ),
    );
  }
}
