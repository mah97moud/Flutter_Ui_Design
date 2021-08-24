import 'package:complete_flutter_ecomerce/shared/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    Key? key,
    required this.text,
    required this.icon,
    required this.press,
  }) : super(key: key);
  final String text, icon;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 10.0,
      ),
      child: TextButton(
        onPressed: press,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            Color(0xFFF5F6F9),
          ),
          padding: MaterialStateProperty.all(
            EdgeInsets.all(20.0),
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
          ),
        ),
        child: Row(
          children: [
            SvgPicture.asset(
              icon,
              width: 22.0,
              color: kPrimaryColor,
            ),
            SizedBox(
              width: 20.0,
            ),
            Expanded(
              child: Text(
                text,
                style: Theme.of(context).textTheme.bodyText2,
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: kTextColor,
              size: 18.0,
            ),
          ],
        ),
      ),
    );
  }
}
