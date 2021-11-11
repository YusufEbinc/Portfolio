import 'package:flutter/material.dart';

class Projectitem extends StatelessWidget {
  const Projectitem({
    Key? key,
    required this.image,
  }) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          colorFilter:
              ColorFilter.mode(Colors.grey.shade400, BlendMode.modulate),
          image: AssetImage(
            image,
          ),
        ),
      ),
    );
  }
}
