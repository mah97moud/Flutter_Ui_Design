import 'package:complete_flutter_ecomerce/shared/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FormErrors extends StatelessWidget {
  const FormErrors({
    Key? key,
    required this.errors,
  }) : super(key: key);

  final List<String> errors;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        errors.length,
        (index) => formError(
          error: errors[index],
        ),
      ),
    );
  }

  Row formError({required String error}) {
    return Row(
      children: [
        SvgPicture.asset(
          'assets/icons/Error.svg',
          height: getProportionateScreenHeight(14.0),
          width: getProportionateScreenWidth(14.0),
        ),
        SizedBox(
          height: getProportionateScreenHeight(
            20.0,
          ),
        ),
        Text(
          error,
        ),
      ],
    );
  }
}
