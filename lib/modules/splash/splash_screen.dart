import 'package:complete_flutter_ecomerce/shared/size_config.dart';
import 'package:flutter/material.dart';

import 'components/body.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = '/splash';
  @override
  Widget build(BuildContext context) {
    // must call it in starting screen.
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
