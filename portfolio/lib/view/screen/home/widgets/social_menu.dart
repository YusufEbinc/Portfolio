import 'package:flutter/material.dart';
import 'package:portfolio/view/screen/home/widgets/social_icon.dart';

import 'package:portfolio/view/screen/widgets/hover_widget.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMenu extends StatelessWidget {
  const SocialMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future _link(String link) async {
      if (await canLaunch(link)) {
        await launch(link);
      } else {
        debugPrint('Link Calısmıyor');
      }
    }

    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          OnHover(
            child: Sosyalicon(
              name: 'assets/icons/github (1).png',
              press: () {
                _link('https://github.com/YusufEbinc');
              },
            ),
          ),
          OnHover(
            child: Sosyalicon(
              name: 'assets/icons/instagram-logo.png',
              press: () {
                _link(
                    'https://www.instagram.com/yusufebinc/?utm_medium=copy_link');
              },
            ),
          ),
          OnHover(
            child: Sosyalicon(
              name: 'assets/icons/linkedin-logo.png',
              press: () {
                _link(
                    'https://www.linkedin.com/in/yusuf-ebin%C3%A7-a53976207/');
              },
            ),
          ),
          OnHover(
            child: Sosyalicon(
              name: 'assets/icons/twitter.png',
              press: () {
                _link('https://twitter.com/?lang=tr');
              },
            ),
          ),
        ],
      ),
    );
  }
}
