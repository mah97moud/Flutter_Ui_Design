import 'package:complete_flutter_ecomerce/modules/cart/cart_screen.dart';
import 'package:complete_flutter_ecomerce/modules/complete_profile/complete_profile_screen.dart';
import 'package:complete_flutter_ecomerce/modules/details/details_screen.dart';
import 'package:complete_flutter_ecomerce/modules/forgot_password/forgot_password_screen.dart';
import 'package:complete_flutter_ecomerce/modules/home/home_screen.dart';
import 'package:complete_flutter_ecomerce/modules/login_success/login_success_screen.dart';
import 'package:complete_flutter_ecomerce/modules/otp/otp_screen.dart';
import 'package:complete_flutter_ecomerce/modules/sign_in/sign_in_screen.dart';
import 'package:complete_flutter_ecomerce/modules/sign_up/sign_up_screen.dart';
import 'package:complete_flutter_ecomerce/modules/splash/splash_screen.dart';
import 'package:flutter/widgets.dart';

//We use name route
//All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  CartScreen.routeName: (context) => CartScreen(),
};
