import 'package:flutter/material.dart';
import 'package:portfolio/constants/color_contstant.dart';

class Sosyalicon extends StatelessWidget {
  const Sosyalicon({Key? key, required this.name, required this.press})
      : super(key: key);
  final Function press;
  final String name;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => press(),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: SizedBox(
          width: 20,
          height: 20,
          child: Image.asset(
            name,
            fit: BoxFit.cover,
            color: whiteColor,
          ),
        ),
      ),
    );
  }
}
