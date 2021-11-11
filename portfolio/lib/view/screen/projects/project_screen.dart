import 'package:flutter/material.dart';
import 'package:portfolio/constants/color_contstant.dart';

import 'package:portfolio/view/screen/projects/widgets/project_item.dart';
import 'package:portfolio/view/screen/widgets/responsive.dart';

class ProjectPage extends StatefulWidget {
  const ProjectPage({Key? key}) : super(key: key);

  @override
  _ProjectPageState createState() => _ProjectPageState();
}

class _ProjectPageState extends State<ProjectPage>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 3),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.fastOutSlowIn,
  );

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

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



/* 









  /*  Center(
            child: ScaleTransition(
              scale: _animation,
              child: Image.asset(
                'assets/images/man.jpg',
                height: 200,
                width: 200,
              ),
            ),
          ) */









 Center(
            child: AnimatedContainer(
              height: _size,
              width: _size,
              curve: Curves.elasticInOut,
              duration: const Duration(seconds: 1),
              child: Material(
                color: Colors.purple,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      _size == 100 ? _size = 200 : _size = 100;
                    });
                  },
                ),
              ),
            ),
          ),
          Center(
            child: AnimatedContainer(
              height: _size,
              width: _size,
              curve: Curves.elasticInOut,
              duration: const Duration(seconds: 1),
              child: Material(
                color: Colors.purple,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      _size == 100 ? _size = 200 : _size = 100;
                    });
                  },
                ),
              ),
            ),
          ), */
