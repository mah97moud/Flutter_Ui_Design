import 'package:complete_flutter_ecomerce/modules/sign_in/sign_in_screen.dart';
import 'package:complete_flutter_ecomerce/shared/components/components.dart';
import 'package:complete_flutter_ecomerce/shared/constants.dart';
import 'package:complete_flutter_ecomerce/shared/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentIndex = 0;
  List splashData = [
    {
      'text': 'Welcome to Buy Now, Let\'s Shop!',
      'image': 'assets/images/splash_1.png',
    },
    {
      'text': 'We help people connect with store \n around Egypt ',
      'image': 'assets/images/splash_2.png',
    },
    {
      'text': 'We show the easy way to shop. \n Just stay at home with us',
      'image': 'assets/images/splash_3.png',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  image: splashData[index]['image'],
                  text: splashData[index]['text'],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: Column(
                  children: [
                    Spacer(),
                    Row(
                      children: List.generate(
                        splashData.length,
                        (index) => buildDot(index: index),
                      ),
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                    Spacer(
                      flex: 3,
                    ),
                    DefaultButton(
                      text: 'Continue',
                      press: () {
                        Navigator.pushNamed(context, SignInScreen.routeName);
                      },
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      height: 6,
      margin: EdgeInsets.only(right: 5),
      width: currentIndex == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentIndex == index ? kPrimaryColor : Color(0xffd8d8d8),
        borderRadius: BorderRadius.circular(3.0),
      ),
    );
  }
}
