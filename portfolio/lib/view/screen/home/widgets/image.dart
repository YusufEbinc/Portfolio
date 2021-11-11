import 'package:flutter/material.dart';

class Images extends StatelessWidget {
  const Images({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Image.asset(
          'assets/images/image.png',
          width: size.width * .4,
          height: size.height * .25,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
