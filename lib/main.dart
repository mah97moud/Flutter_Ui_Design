import 'package:complete_flutter_ecomerce/shared/routes/routs.dart';
import 'package:complete_flutter_ecomerce/shared/theme/light_theme.dart';
import 'package:flutter/material.dart';

import 'modules/home/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: theme(),
      // home: HomeScreen(),
      initialRoute: HomeScreen.routeName,
      routes: routes,
    );
  }
}
