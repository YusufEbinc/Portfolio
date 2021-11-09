/* import 'package:flutter/material.dart';
import 'package:portfolio/constants/color_contstant.dart';

class MenuItem extends StatefulWidget {
  const MenuItem({Key? key}) : super(key: key);

  @override
  _MenuItemState createState() => _MenuItemState();
}

class _MenuItemState extends State<MenuItem> {
  final List _isHovering = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: blackColor,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
                width: 40,
                child: Image.asset('assets/images/logo.png'),
              ),
              const SizedBox(
                width: 40,
              ),
              Text(
                'Library',
                style: Theme.of(context).textTheme.bodyText2,
              ),
              const SizedBox(
                width: 40,
              ),
              InkWell(
                onHover: (value) {
                  setState(() {
                    value ? _isHovering[0] = true : _isHovering[0] = false;
                  });
                },
                onTap: () {},
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Home',
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                    const SizedBox(height: 5),
                    Visibility(
                      maintainAnimation: true,
                      maintainState: true,
                      maintainSize: true,
                      visible: _isHovering[0],
                      child: Container(height: 2, width: 20, color: whiteColor),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
} */

import 'package:flutter/material.dart';
import 'package:portfolio/constants/color_contstant.dart';
import 'package:portfolio/screen/widgets/hover_widget.dart';

// ignore: must_be_immutable
class Menuitem extends StatelessWidget {
  Menuitem({
    Key? key,
    required this.press,
    required this.title,
    required this.urlname,
  }) : super(key: key);
  Function press;
  String title;
  String urlname;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: InkWell(
        onTap: () => press(),
        child: Row(
          children: [
            SizedBox(
              height: 20,
              width: 20,
              child: Image.asset(
                urlname,
                fit: BoxFit.cover,
                color: whiteColor,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            OnHover(
              child: Text(title,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(fontSize: 18, color: whiteColor)),
            ),
          ],
        ),
      ),
    );
  }
}
