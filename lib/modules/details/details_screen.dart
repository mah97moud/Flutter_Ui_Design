import 'package:complete_flutter_ecomerce/models/product.dart';
import 'package:complete_flutter_ecomerce/modules/details/components/details_body.dart';
import 'package:flutter/material.dart';

import 'components/custom_app_bar.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);
  static String routeName = '/details';

  @override
  Widget build(BuildContext context) {
    final ProductDetailsArguments? arguments =
        ModalRoute.of(context)!.settings.arguments as ProductDetailsArguments?;
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      appBar: CustomAppBar(
        rating: arguments!.product.rating,
      ),
      body: DetailsBody(
        product: arguments.product,
      ),
    );
  }
}

class ProductDetailsArguments {
  final Product product;

  ProductDetailsArguments({
    required this.product,
  });
}
