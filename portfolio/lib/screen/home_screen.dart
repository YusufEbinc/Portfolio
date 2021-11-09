import 'package:flutter/material.dart';

import 'package:portfolio/constants/color_contstant.dart';

import 'package:portfolio/screen/widgets/hover_widget.dart';
import 'package:portfolio/screen/widgets/responsive.dart';
import 'package:portfolio/screen/widgets/social_icon.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future _link(String link) async {
      if (await canLaunch(link)) {
        await launch(link);
      } else {
        debugPrint('Link Calısmıyor');
      }
    }

    Size size = MediaQuery.of(context).size;
    return Container(
      color: blackColor12,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (Responsive.isDesktop(context)) ...[
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
                        'assets/images/image.png',
                        width: size.width * .4,
                        height: size.height * .5,
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
                          child: Text('YUSUF EBİNÇ',
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
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ] else ...[
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(
                    'assets/images/image.png',
                    width: size.width * .4,
                    height: size.height * .25,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text('YUSUF EBİNÇ',
                        style: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(fontSize: 30)),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 15),
                    child: Text(
                      'Creative Photographer based in New York and happy to travel all over Europe to capture photos.',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText2!
                          .copyWith(color: whiteColor.withOpacity(0.6)),
                    ),
                  ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
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
                  )
                ],
              ),
            )
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