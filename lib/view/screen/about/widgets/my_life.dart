import 'package:flutter/material.dart';

class MyLife extends StatelessWidget {
  const MyLife({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String subtitle =
        'I am a person who progresses by improving myself in line with the goals I set in life. I am open to innovations and have a solution-oriented structure. I want to sign successful projects by gaining experience in the software field.';
    return Column(
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
          subtitle,
          style: Theme.of(context).textTheme.bodyText2,
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
