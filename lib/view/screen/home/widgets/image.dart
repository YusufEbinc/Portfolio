import 'package:flutter/material.dart';

class Images extends StatelessWidget {
  const Images({
    Key? key,
    required this.withsize,
    required this.heightsize,
  }) : super(key: key);
  final double withsize;
  final double heightsize;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          'assets/images/image.png',
          width: size.width * withsize,
          height: size.height * heightsize,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
