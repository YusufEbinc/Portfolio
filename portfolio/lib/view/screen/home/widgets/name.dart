import 'package:flutter/material.dart';
import 'package:portfolio/constants/color_contstant.dart';
import 'package:portfolio/view/screen/widgets/responsive.dart';

class Name extends StatelessWidget {
  const Name({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String subtitle =
        'I am happy to learn and exhibit different innovations with flutter. ';
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: (Responsive.isMobile(context))
            ? CrossAxisAlignment.center
            : CrossAxisAlignment.start,
        children: [
          Text(
            'YUSUF EBİNÇ',
            style: (Responsive.isMobile(context))
                ? Theme.of(context).textTheme.headline2
                : Theme.of(context).textTheme.headline1,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            subtitle,
            style: Theme.of(context)
                .textTheme
                .bodyText2!
                .copyWith(color: whiteColor.withOpacity(0.6)),
          ),
        ],
      ),
    );
  }
}
