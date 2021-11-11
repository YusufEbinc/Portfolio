import 'package:flutter/material.dart';

import 'package:portfolio/view/screen/about/widgets/about_widget.dart';

class MyAbout extends StatelessWidget {
  const MyAbout({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}
