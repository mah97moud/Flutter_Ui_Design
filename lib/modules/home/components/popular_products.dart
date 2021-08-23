import 'package:complete_flutter_ecomerce/models/product.dart';
import 'package:complete_flutter_ecomerce/modules/details/details_screen.dart';
import 'package:complete_flutter_ecomerce/modules/home/components/product_card.dart';
import 'package:complete_flutter_ecomerce/modules/home/components/section_title.dart';
import 'package:complete_flutter_ecomerce/shared/size_config.dart';
import 'package:flutter/material.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          text: 'Popular Products',
          press: () {},
        ),
        SizedBox(height: getProportionateScreenHeight(20.0)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          child: Row(
            children: [
              ...List.generate(
                demoProducts.length,
                (index) => ProductCard(
                  product: demoProducts[index],
                  press: () => Navigator.pushNamed(
                    context,
                    DetailsScreen.routeName,
                    arguments: ProductDetailsArguments(
                      product: demoProducts[index],
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(20.0),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
