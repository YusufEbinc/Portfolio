import 'package:flutter/material.dart';

// ignore: must_be_immutable
class OnHover extends StatefulWidget {
  OnHover({Key? key, required this.child}) : super(key: key);
  Widget child;
  @override
  _OnHoverState createState() => _OnHoverState();
}

class _OnHoverState extends State<OnHover> {
  bool hover = false;

  @override
  Widget build(BuildContext context) {
    final hoverTransform = Matrix4.identity()..scale(1.2);
    final transform = hover ? hoverTransform : Matrix4.identity();
    return MouseRegion(
      onEnter: (event) => onEnter(true),
      onExit: (event) => onEnter(false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        child: widget.child,
        transform: transform,
      ),
    );
  }

  void onEnter(bool hover) => setState(() {
        this.hover = hover;
      });
}
