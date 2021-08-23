import 'package:complete_flutter_ecomerce/modules/cart/cart_screen.dart';
import 'package:complete_flutter_ecomerce/modules/home/components/search_field.dart';
import 'package:complete_flutter_ecomerce/shared/size_config.dart';
import 'package:flutter/material.dart';

import 'icon_btn_with_counter.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20.0)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SearchField(),
          IconBtnWithCounter(
            press: () => Navigator.pushNamed(context, CartScreen.routeName),
            svgSrc: 'assets/icons/Cart Icon.svg',
          ),
          IconBtnWithCounter(
            press: () {},
            svgSrc: 'assets/icons/Bell.svg',
            numOfItems: 3,
          ),
        ],
      ),
    );
  }
}
