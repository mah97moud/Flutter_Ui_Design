import 'package:complete_flutter_ecomerce/modules/sign_in/components/sign_in_form.dart';
import 'package:complete_flutter_ecomerce/shared/components/components.dart';
import 'package:complete_flutter_ecomerce/shared/constants.dart';
import 'package:complete_flutter_ecomerce/shared/size_config.dart';
import 'package:flutter/material.dart';

class SignInBody extends StatelessWidget {
  const SignInBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(
                height: SizeConfig.screenHeight * 0.04,
              ),
              Text(
                'Welcome Back',
                style: headingStyle,
              ),
              Text(
                'Sign in with your email and password \n or continue with social media',
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.08,
              ),
              SignForm(),
              SizedBox(
                height: SizeConfig.screenHeight * 0.08,
              ),
              SocialIconsRow(),
              SizedBox(
                height: getProportionateScreenHeight(20.0),
              ),
              NoAccountText(),
              SizedBox(
                height: SizeConfig.screenHeight * 0.05,
              )
            ],
          ),
        ),
      ),
    );
  }
}
