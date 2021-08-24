import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfilePic extends StatelessWidget {
  const ProfilePic({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115.0,
      width: 115.0,
      child: Stack(
        clipBehavior: Clip.none,
        fit: StackFit.expand,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(
              'assets/images/Profile Image.png',
            ),
          ),
          Positioned(
            bottom: 0.0,
            right: -12.0,
            child: SizedBox(
              height: 46.0,
              width: 46.0,
              child: TextButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Color(0xFFF5F6F9),
                  ),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                      side: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  padding: MaterialStateProperty.all(
                    EdgeInsets.zero,
                  ),
                ),
                child: SvgPicture.asset(
                  'assets/icons/Camera Icon.svg',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
