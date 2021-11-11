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
    Size size = MediaQuery.of(context).size;
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
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(25),
                    child: DecoratedBoxTransition(
                      position: DecorationPosition.background,
                      decoration: decorationTween.animate(_controller),
                      child: SizedBox(
                        width: size.width * .4,
                        height: size.height * .5,
                        child: Align(
                          alignment: Alignment.center,
                          child: Image.asset(
                            'assets/images/image.png',
                          ),
                        ),
                      ),
                    ),
                  ),
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
            const Images(),
            const Name(),
            const SocialMenu(),
          ]
        ],
      ),
    );
  }
}





/* 

 if (Responsive.isTablet(context)) ...[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(25),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(size.height * .55),
                    child: Image.asset(
                      'assets/images/man.jpg',
                      width: size.width * .3,
                      height: size.height * .55,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text('YUSUF EBINC',
                            style: Theme.of(context).textTheme.headline1!),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          'Creative Photographer based in New York and happy to travel all over Europe to capture photos.',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2!
                              .copyWith(color: whiteColor.withOpacity(0.6)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: SizedBox(
                          child: Row(
                            children: [
                              Sosyalicon(
                                name: 'assets/icons/github (1).png',
                                press: () {
                                  _link('https://github.com/YusufEbinc');
                                },
                              ),
                              Sosyalicon(
                                name: 'assets/icons/instagram-logo.png',
                                press: () {
                                  _link(
                                      'https://www.instagram.com/yusufebinc/?utm_medium=copy_link');
                                },
                              ),
                              Sosyalicon(
                                name: 'assets/icons/linkedin-logo.png',
                                press: () {
                                  _link(
                                      'https://www.linkedin.com/in/yusuf-ebin%C3%A7-a53976207/');
                                },
                              ),
                              Sosyalicon(
                                name: 'assets/icons/twitter.png',
                                press: () {
                                  _link('https://twitter.com/?lang=tr');
                                },
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),*/