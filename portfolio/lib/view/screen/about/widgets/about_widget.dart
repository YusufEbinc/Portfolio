import 'package:flutter/material.dart';
import 'package:portfolio/constants/color_contstant.dart';

class AboutText extends StatelessWidget {
  const AboutText({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: RichText(
        text: TextSpan(
          text: title,
          style: Theme.of(context).textTheme.bodyText2,
          children: [
            TextSpan(
                text: subtitle,
                style: Theme.of(context)
                    .textTheme
                    .bodyText2!
                    .copyWith(color: whiteColor.withOpacity(0.6))),
          ],
        ),
      ),
    );
  }
}
