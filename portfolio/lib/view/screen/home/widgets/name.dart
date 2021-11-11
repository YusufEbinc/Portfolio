import 'package:flutter/material.dart';
import 'package:portfolio/constants/color_contstant.dart';

class Name extends StatelessWidget {
  const Name({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String subtitle =
        'Flutter ile çalışarak yeni deneyimlere imza atan ve bunlardan mutluluk duyan biriyim ';
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('YUSUF EBİNÇ', style: Theme.of(context).textTheme.headline1!),
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
