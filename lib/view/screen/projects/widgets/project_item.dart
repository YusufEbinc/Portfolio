import 'package:flutter/material.dart';
import 'package:portfolio/core/model.dart';

class Projectitem extends StatefulWidget {
  const Projectitem({
    Key? key,
    required this.image,
  }) : super(key: key);

  final String image;

  @override
  State<Projectitem> createState() => _ProjectitemState();
}

class _ProjectitemState extends State<Projectitem> {
  late OnTapUrl ontap;
  bool hover = false;
  @override
  void initState() {
    super.initState();
    ontap = OnTapUrl();
  }

  @override
  Widget build(BuildContext context) {
    final hoverTransform = Matrix4.identity()..scale(1.07);
    final transform = hover ? hoverTransform : Matrix4.identity();
    return MouseRegion(
      onEnter: (event) => onEnter(true),
      onExit: (event) => onEnter(false),
      child: InkWell(
        onTap: () {
          ontap.link('https://github.com/YusufEbinc');
        },
        child: AnimatedContainer(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            image: DecorationImage(
              colorFilter:
                  ColorFilter.mode(Colors.grey.shade400, BlendMode.modulate),
              image: AssetImage(
                widget.image,
              ),
            ),
          ),
          duration: const Duration(milliseconds: 150),
          transform: transform,
        ),
      ),
    );
  }

  void onEnter(bool hover) => setState(() {
        this.hover = hover;
      });
}
