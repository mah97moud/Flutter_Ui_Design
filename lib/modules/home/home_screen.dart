import 'package:complete_flutter_ecomerce/shared/components/custom_bottom_nav_bar.dart';
import 'package:complete_flutter_ecomerce/shared/enums.dart';
import 'package:complete_flutter_ecomerce/shared/size_config.dart';
import 'package:flutter/material.dart';

import 'components/home_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static String routeName = '/home';

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: HomeBody(),
      bottomNavigationBar: CustomBottomNavBar(
        selectedMenu: MenuState.home,
      ),
    );
  }
}
