import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../constants.dart' as constants;

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      overflow: Overflow.visible,
      children: [
        Container(
          height: 300,
          child: AppBar(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40.0),
                  bottomRight: Radius.circular(40.0)),
            ),
            brightness: Brightness.dark,
            backgroundColor: constants.kDarkPurple,
            elevation: 0.0,
            automaticallyImplyLeading: false,
          ),
        ),
        Positioned(
          top: 85,
          left: 25.0,
          right: 25.0,
          child: SvgPicture.asset(
            'images/lady.svg',
            height: 175.0,
          ),
        ),
      ],
    );
  }
}
