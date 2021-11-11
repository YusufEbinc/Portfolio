import 'package:flutter/material.dart';
import 'package:portfolio/core/model.dart';
import 'package:portfolio/view/screen/home/widgets/social_icon.dart';

import 'package:portfolio/view/screen/widgets/hover_widget.dart';
import 'package:portfolio/view/screen/widgets/responsive.dart';

class SocialMenu extends StatefulWidget {
  const SocialMenu({
    Key? key,
  }) : super(key: key);

  @override
  State<SocialMenu> createState() => _SocialMenuState();
}

class _SocialMenuState extends State<SocialMenu> {
  late OnTapUrl ontap;
  @override
  void initState() {
    super.initState();
    ontap = OnTapUrl();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: (Responsive.isMobile(context))
            ? MainAxisAlignment.center
            : MainAxisAlignment.start,
        children: [
          OnHover(
            child: Sosyalicon(
              name: 'assets/icons/github (1).png',
              press: () {
                ontap.link('https://github.com/YusufEbinc');
              },
            ),
          ),
          OnHover(
            child: Sosyalicon(
              name: 'assets/icons/instagram-logo.png',
              press: () {
                ontap.link(
                    'https://instagram.com/yusufebinc?utm_medium=copy_link');
              },
            ),
          ),
          OnHover(
            child: Sosyalicon(
              name: 'assets/icons/linkedin-logo.png',
              press: () {
                ontap.link(
                    'https://www.linkedin.com/in/yusuf-ebin%C3%A7-a53976207/');
              },
            ),
          ),
          OnHover(
            child: Sosyalicon(
              name: 'assets/icons/twitter.png',
              press: () {
                ontap.link('https://twitter.com/?lang=tr');
              },
            ),
          ),
        ],
      ),
    );
  }
}
