import 'package:complete_flutter_ecomerce/modules/sign_up/components/sign_up_form.dart';
import 'package:complete_flutter_ecomerce/shared/components/components.dart';
import 'package:complete_flutter_ecomerce/shared/constants.dart';
import 'package:complete_flutter_ecomerce/shared/size_config.dart';
import 'package:flutter/material.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20.0)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: SizeConfig.screenHeight * 0.07,
              ),
              Text(
                'Register Account',
                style: headingStyle,
              ),
              Text(
                'Complete your details or continue\n with social media',
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.07,
              ),
              SignUpForm(),
              SizedBox(
                height: SizeConfig.screenHeight * 0.07,
              ),
              SocialIconsRow(),
              SizedBox(
                height: getProportionateScreenHeight(20.0),
              ),
              Text(
                'by continuing your confirm that you agree \nwith our terms and conditions',
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.04,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
