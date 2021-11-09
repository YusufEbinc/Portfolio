import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/constants/color_contstant.dart';
import 'package:portfolio/screen/widgets/about_widget.dart';
import 'package:portfolio/screen/widgets/responsive.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: blackColor12,
      child: Padding(
        padding: const EdgeInsets.only(left: 40, top: 40, right: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                color: Colors.red,
                height: size.height * .7,
                width: size.width * .7,
                child: Image.asset(
                  'assets/images/man.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Yusuf Ebinç & Flutter Developer',
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Hello, I am a creative photographer based in New York and happy to travel all over Europe to capture your big day in candid and authentic photos. I will create a lasting memory of the people.',
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                      ],
                    ),
                  ),
                  if (Responsive.isDesktop(context))
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            AboutText(
                              subtitle: '01.03.1998',
                              title: 'Birthday:' '   ',
                            ),
                            AboutText(
                              subtitle: '23',
                              title: 'Age:' '   ',
                            ),
                            AboutText(
                              subtitle: 'yusufebinc3@gmail.com',
                              title: 'Email:' '   ',
                            ),
                            AboutText(
                              subtitle: '05537981909',
                              title: 'Phone:' '   ',
                            ),
                            AboutText(
                              subtitle: 'Sakarya, Türkiye',
                              title: 'Adress:' '   ',
                            ),
                          ],
                        ),
                      ),
                    ),
                ],
              ),
            ),
            if (Responsive.isMobile(context))
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      AboutText(
                        subtitle: '01.03.1998',
                        title: 'Birthday:' '   ',
                      ),
                      AboutText(
                        subtitle: '23',
                        title: 'Age:' '   ',
                      ),
                      AboutText(
                        subtitle: 'yusufebinc3@gmail.com',
                        title: 'Email:' '   ',
                      ),
                      AboutText(
                        subtitle: '05537981909',
                        title: 'Phone:' '   ',
                      ),
                      AboutText(
                        subtitle: 'Sakarya, Türkiye',
                        title: 'Adress:' '   ',
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
