import 'package:complete_flutter_ecomerce/modules/home/components/popular_products.dart';
import 'package:complete_flutter_ecomerce/modules/home/components/special_offers.dart';
import 'package:complete_flutter_ecomerce/shared/size_config.dart';
import 'package:flutter/material.dart';
import 'categories.dart';
import 'discount_banner.dart';
import 'home_header.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(20.0)),
            HomeHeader(),
            SizedBox(height: getProportionateScreenHeight(30.0)),
            DiscountBanner(),
            SizedBox(height: getProportionateScreenHeight(30.0)),
            Categories(),
            SizedBox(height: getProportionateScreenHeight(30.0)),
            SpecialOffers(),
            SizedBox(height: getProportionateScreenHeight(30.0)),
            PopularProducts(),
            SizedBox(height: getProportionateScreenHeight(30.0)),
          ],
        ),
      ),
    );
  }
}
