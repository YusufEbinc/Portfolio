import 'package:flutter/material.dart';
import 'package:portfolio/constants/color_contstant.dart';

import 'package:portfolio/view/screen/about/about_screen.dart';
import 'package:portfolio/view/screen/contact/contact_screen.dart';
import 'package:portfolio/view/screen/home/home_screen.dart';
import 'package:portfolio/view/screen/projects/project_screen.dart';
import 'package:portfolio/view/screen/widgets/menu_item.dart';
import 'package:portfolio/view/screen/widgets/responsive.dart';

class PageViewModel extends StatefulWidget {
  const PageViewModel({Key? key}) : super(key: key);

  @override
  _PageViewModelState createState() => _PageViewModelState();
}

class _PageViewModelState extends State<PageViewModel>
    with TickerProviderStateMixin {
  int item = 0;
  PageController pageController = PageController();
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 4),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.elasticOut,
  );

  @override
  void dispose() {
    pageController.dispose();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Responsive.isDesktop(context)
          ? null
          : AppBar(
              backgroundColor: blackColor,
              elevation: 0,
              leading: Center(
                child: SizedBox(
                  height: 40,
                  width: 40,
                  child: Image.asset(
                    'assets/images/logo.png',
                    color: whiteColor,
                  ),
                ),
              ),
            ),
      bottomNavigationBar: (Responsive.isDesktop(context))
          ? null
          : BottomNavigationBar(
              backgroundColor: blackColor12,
              elevation: 0,
              currentIndex: item,
              selectedItemColor: whiteColor,
              unselectedItemColor: blackColor,
              items: [
                BottomNavigationBarItem(
                  icon: SizedBox(
                    height: 25,
                    width: 25,
                    child: Image.asset(
                      'assets/icons/homepage.png',
                      color: whiteColor,
                    ),
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                    icon: SizedBox(
                      height: 25,
                      width: 25,
                      child: Image.asset(
                        'assets/icons/user.png',
                        color: whiteColor,
                      ),
                    ),
                    label: 'About'),
                BottomNavigationBarItem(
                    icon: SizedBox(
                      height: 25,
                      width: 25,
                      child: Image.asset(
                        'assets/icons/project.png',
                        color: whiteColor,
                      ),
                    ),
                    label: 'Projects'),
                BottomNavigationBarItem(
                    icon: SizedBox(
                      height: 25,
                      width: 25,
                      child: Image.asset(
                        'assets/icons/contact.png',
                        color: whiteColor,
                      ),
                    ),
                    label: 'Contact'),
              ],
              onTap: (index) {
                setState(() {
                  item = index;
                  setState(() {
                    pageController.animateToPage(item,
                        duration: const Duration(seconds: 1),
                        curve: Curves.decelerate);
                  });
                });
              },
            ),
      body: Row(
        children: [
          if (Responsive.isDesktop(context))
            Expanded(
              flex: 2,
              child: Container(
                color: blackColor,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: RotationTransition(
                          turns: _animation,
                          child: SizedBox(
                            height: 80,
                            width: 80,
                            child: Image.asset(
                              'assets/images/logo.png',
                              color: whiteColor,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Divider(
                        endIndent: 20,
                        color: whiteColor,
                        thickness: 2,
                      ),
                      Menuitem(
                          press: () {
                            setState(() {
                              pageController.animateToPage(0,
                                  duration: const Duration(seconds: 1),
                                  curve: Curves.decelerate);
                            });
                          },
                          urlname: 'assets/icons/homepage.png',
                          title: 'Home'),
                      Menuitem(
                          urlname: 'assets/icons/user.png',
                          press: () {
                            setState(() {
                              pageController.animateToPage(1,
                                  duration: const Duration(seconds: 1),
                                  curve: Curves.decelerate);
                            });
                          },
                          title: 'About'),
                      Menuitem(
                          press: () {
                            setState(() {
                              pageController.animateToPage(2,
                                  duration: const Duration(seconds: 1),
                                  curve: Curves.decelerate);
                            });
                          },
                          urlname: 'assets/icons/project.png',
                          title: 'Projects'),
                      Menuitem(
                          press: () {
                            setState(() {
                              pageController.animateToPage(3,
                                  duration: const Duration(seconds: 1),
                                  curve: Curves.decelerate);
                            });
                          },
                          urlname: 'assets/icons/contact.png',
                          title: 'Contact'),
                    ],
                  ),
                ),
              ),
            ),
          Expanded(
            flex: 7,
            child: PageView(
              controller: pageController,
              scrollDirection: Axis.horizontal,
              children: const [
                HomePage(),
                AboutPage(),
                ProjectPage(),
                ContactPage(),
              ],
              onPageChanged: (index) {
                item = index;
              },
            ),
          )
        ],
      ),
    );
  }
}



/*PageView(
              controller: pageController,
              scrollDirection: Axis.horizontal,
              children: const [
                HomePage(),
                AboutPage(),
                ProjectPage(),
                ContactPage(),
              ],
              onPageChanged: (index) {
                item = index;
              },
            ),   
            
            
            
            drawer: Drawer(
        child: Padding(
          padding: const EdgeInsets.only(left: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Menuitem(
                  press: () {
                    setState(() {
                      pageController.animateToPage(0,
                          duration: const Duration(milliseconds: 100),
                          curve: Curves.bounceIn);
                    });
                  },
                  urlname: 'assets/icons/homepage.png',
                  title: 'Home'),
              Menuitem(
                  urlname: 'assets/icons/user.png',
                  press: () {
                    setState(() {
                      pageController.animateToPage(1,
                          duration: const Duration(milliseconds: 100),
                          curve: Curves.bounceIn);
                    });
                  },
                  title: 'About'),
              Menuitem(
                  press: () {
                    setState(() {
                      pageController.animateToPage(2,
                          duration: const Duration(milliseconds: 100),
                          curve: Curves.bounceIn);
                    });
                  },
                  urlname: 'assets/icons/project.png',
                  title: 'Projects'),
              Menuitem(
                  press: () {
                    setState(() {
                      pageController.animateToPage(3,
                          duration: const Duration(milliseconds: 100),
                          curve: Curves.bounceIn);
                    });
                  },
                  urlname: 'assets/icons/contact.png',
                  title: 'Contact'),
            ],
          ),
        ),
      ),
            
            
            
            
            Row(
        children: [
          /*  if (Responsive.isDesktop(context))
            Expanded(
              flex: 2,
              child: Container(
                color: blackColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Menuitem(
                        press: () {
                          setState(() {
                            pageController.animateToPage(0,
                                duration: const Duration(milliseconds: 100),
                                curve: Curves.bounceIn);
                          });
                        },
                        urlname: 'assets/icons/homepage.png',
                        title: 'Home'),
                    Menuitem(
                        urlname: 'assets/icons/user.png',
                        press: () {
                          setState(() {
                            pageController.animateToPage(1,
                                duration: const Duration(milliseconds: 100),
                                curve: Curves.bounceIn);
                          });
                        },
                        title: 'About'),
                    Menuitem(
                        press: () {
                          setState(() {
                            pageController.animateToPage(2,
                                duration: const Duration(milliseconds: 100),
                                curve: Curves.bounceIn);
                          });
                        },
                        urlname: 'assets/icons/project.png',
                        title: 'Projects'),
                    Menuitem(
                        press: () {
                          setState(() {
                            pageController.animateToPage(3,
                                duration: const Duration(milliseconds: 100),
                                curve: Curves.bounceIn);
                          });
                        },
                        urlname: 'assets/icons/contact.png',
                        title: 'Contact'),
                  ],
                ),
              ),
            ), */
          
        ],
      ),
            
            
            
            
            
           AppBar(
              backgroundColor: blackColor,
              elevation: 0,
              leading: Builder(
                  builder: (BuildContext context) => IconButton(
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                      icon: const Icon(Icons.menu))),
            ), 
            
            
            
            
            
            
            */