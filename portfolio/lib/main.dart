import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constants/color_contstant.dart';
import 'package:portfolio/view/screen/widgets/page_view.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: blackColor12,
        textTheme: GoogleFonts.antonTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white)
            .copyWith(
              headline1: const TextStyle(
                color: whiteColor,
                fontSize: 47,
                fontWeight: FontWeight.bold,
              ),
              bodyText2: const TextStyle(
                  color: whiteColor, fontSize: 17, fontWeight: FontWeight.w300),
              bodyText1: const TextStyle(
                  color: whiteColor, fontSize: 25, fontWeight: FontWeight.bold),
            ),
      ),
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: const PageViewModel(),
    );
  }
}
