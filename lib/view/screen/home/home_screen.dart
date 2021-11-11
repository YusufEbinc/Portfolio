import 'package:flutter/material.dart';

import 'package:portfolio/constants/color_contstant.dart';

import 'package:portfolio/view/screen/home/widgets/image.dart';
import 'package:portfolio/view/screen/home/widgets/name.dart';
import 'package:portfolio/view/screen/home/widgets/social_menu.dart';
import 'package:portfolio/view/screen/widgets/responsive.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  final DecorationTween decorationTween = DecorationTween(
    begin: BoxDecoration(
      color: const Color(0xFFFFFFFF),
      border: Border.all(style: BorderStyle.none),
      borderRadius: BorderRadius.circular(60.0),
      shape: BoxShape.rectangle,
      boxShadow: const <BoxShadow>[
        BoxShadow(
          color: Color(0x66666666),
          blurRadius: 10.0,
          spreadRadius: 3.0,
          offset: Offset(0, 6.0),
        )
      ],
    ),
    end: BoxDecoration(
      color: const Color(0xFFFFFFFF),
      border: Border.all(
        style: BorderStyle.none,
      ),
      borderRadius: BorderRadius.zero,
      // No shadow.
    ),
  );

  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 3),
  )..repeat(reverse: true);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Container(
      color: blackColor12,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (Responsive.isDesktop(context)) ...[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Images(
                  heightsize: .5,
                  withsize: .3,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Name(),
                      SocialMenu(),
                    ],
                  ),
                ),
              ],
            ),
          ] else if (Responsive.isTablet(context)) ...[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Images(
                  heightsize: .5,
                  withsize: .4,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Name(),
                      SocialMenu(),
                    ],
                  ),
                ),
              ],
            ),
          ] else ...[
            const Images(
              withsize: .4,
              heightsize: .3,
            ),
            const Name(),
            const SocialMenu(),
          ]
        ],
      ),
    );
  }
}
