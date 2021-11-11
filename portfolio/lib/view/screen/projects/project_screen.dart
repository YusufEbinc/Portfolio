import 'package:flutter/material.dart';
import 'package:portfolio/constants/color_contstant.dart';

import 'package:portfolio/view/screen/projects/widgets/project_item.dart';
import 'package:portfolio/view/screen/widgets/responsive.dart';

class ProjectPage extends StatefulWidget {
  const ProjectPage({Key? key}) : super(key: key);

  @override
  _ProjectPageState createState() => _ProjectPageState();
}

class _ProjectPageState extends State<ProjectPage> {
  List<String> image = [
    'assets/images/img3.png',
    'assets/images/img1.png',
    'assets/images/img2.png',
    'assets/images/img4.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: blackColor12,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: GridView.count(
          mainAxisSpacing: 50,
          crossAxisSpacing: 50,
          padding: const EdgeInsets.all(20),
          crossAxisCount: (Responsive.isMobile(context)) ? 1 : 2,
          children: [
            Projectitem(image: image[0]),
            Projectitem(image: image[1]),
            Projectitem(image: image[2]),
            Projectitem(image: image[3]),
          ],
        ),
      ),
    );
  }
}
