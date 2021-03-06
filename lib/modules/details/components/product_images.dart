import 'package:complete_flutter_ecomerce/models/product.dart';
import 'package:complete_flutter_ecomerce/shared/constants.dart';
import 'package:complete_flutter_ecomerce/shared/size_config.dart';
import 'package:flutter/material.dart';

class ProductImages extends StatefulWidget {
  const ProductImages({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  _ProductImagesState createState() => _ProductImagesState();
}

class _ProductImagesState extends State<ProductImages> {
  int selectedImage = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: getProportionateScreenWidth(238.0),
          child: AspectRatio(
            aspectRatio: 1.0,
            child: Image.asset(
              widget.product.images[selectedImage],
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(
              widget.product.images.length,
              (index) => buildImagePreview(
                index: index,
              ),
            ),
          ],
        ),
      ],
    );
  }

  GestureDetector buildImagePreview({required int index}) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedImage = index;
        });
      },
      child: Container(
        padding: EdgeInsets.all(getProportionateScreenWidth(8.0)),
        margin: EdgeInsets.only(right: getProportionateScreenWidth(15.0)),
        height: getProportionateScreenWidth(48.0),
        width: getProportionateScreenWidth(48.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(
            color: selectedImage == index ? kPrimaryColor : Colors.transparent,
          ),
        ),
        child: Image.asset(widget.product.images[index]),
      ),
    );
  }
}
