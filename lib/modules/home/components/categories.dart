import 'package:complete_flutter_ecomerce/shared/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {
        'icon': 'assets/icons/Flash Icon.svg',
        'text': 'Flash Deal',
      },
      {
        'icon': 'assets/icons/Bill Icon.svg',
        'text': 'Bill ',
      },
      {
        'icon': 'assets/icons/Game Icon.svg',
        'text': 'Game',
      },
      {
        'icon': 'assets/icons/Gift Icon.svg',
        'text': 'Daily Gift',
      },
      {
        'icon': 'assets/icons/Discover.svg',
        'text': 'More',
      },
    ];
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20.0)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...List.generate(
            categories.length,
            (index) => CategoryCard(
              index: index,
              press: () {},
              categories: categories,
            ),
          )
        ],
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.categories,
    required this.press,
    required this.index,
  }) : super(key: key);

  final List<Map<String, dynamic>> categories;
  final GestureTapCallback press;
  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        height: getProportionateScreenWidth(70.0),
        child: Column(
          children: [
            Expanded(
              child: AspectRatio(
                aspectRatio: 1.0,
                child: Container(
                  padding: EdgeInsets.all(getProportionateScreenWidth(10.0)),
                  decoration: BoxDecoration(
                    color: Color(0xFFFFECDF),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: SvgPicture.asset(
                    categories[index]['icon'],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 5.0,
            ),
            Text(
              categories[index]['text'],
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
