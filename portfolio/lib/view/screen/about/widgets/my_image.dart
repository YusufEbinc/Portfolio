import 'package:flutter/material.dart';
import 'package:portfolio/constants/color_contstant.dart';

class MyImage extends StatelessWidget {
  const MyImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * .7,
      color: blackColor12,
      child: Image.asset(
        'assets/images/image2.jpg',
        fit: BoxFit.cover,
      ),
    );
  }
}
