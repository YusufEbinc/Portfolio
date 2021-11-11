import 'package:flutter/material.dart';

class MyImage extends StatelessWidget {
  const MyImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.red,
      height: size.height * .7,
      width: size.width * .7,
      child: Image.asset(
        'assets/images/man.jpg',
        fit: BoxFit.cover,
      ),
    );
  }
}
