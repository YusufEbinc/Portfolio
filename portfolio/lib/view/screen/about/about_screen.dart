import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/constants/color_contstant.dart';

import 'package:portfolio/view/screen/about/widgets/my_about.dart';
import 'package:portfolio/view/screen/about/widgets/my_image.dart';
import 'package:portfolio/view/screen/about/widgets/my_life.dart';
import 'package:portfolio/view/screen/widgets/responsive.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: blackColor12,
      child: Padding(
        padding: const EdgeInsets.all(40),
        child: ListView(
          children: [
            const MyImage(),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Expanded(
                  child: MyLife(),
                ),
                if (Responsive.isDesktop(context)) const MyAbout(),
              ],
            ),
            if (Responsive.isMobile(context)) const MyAbout()
          ],
        ),
      ),
    );
  }
}
