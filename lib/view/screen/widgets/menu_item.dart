import 'package:flutter/material.dart';
import 'package:portfolio/constants/color_contstant.dart';
import 'package:portfolio/view/screen/widgets/hover_widget.dart';

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
