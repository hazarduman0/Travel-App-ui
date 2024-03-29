import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_app_ui/core/helper/theme_helper.dart';
import 'package:travel_app_ui/ui/pages/chat/chat_page.dart';
import 'package:travel_app_ui/ui/pages/flow/flow_page.dart';
import 'package:travel_app_ui/ui/pages/map/map_page.dart';
import 'package:travel_app_ui/ui/pages/notification/notification_page.dart';
import 'package:travel_app_ui/ui/pages/user/user_profile_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.openDrawer});

  final VoidCallback openDrawer;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late PageController pageController;
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          PageView(
              physics: const NeverScrollableScrollPhysics(),
              controller: pageController,
              children: [
                FlowPage(onClick: widget.openDrawer),
                const NotificationPage(),
                const ChatPage(),
                const MapPage(),
                const UserProfilePage()
              ]),
          Positioned(bottom: 0.0, child: bottomNavigationBar(size))
        ],
      ),
    );
  }

  Widget bottomNavigationBar(Size size) => Padding(
        padding: EdgeInsets.symmetric(
            horizontal: size.shortestSide * 0.025,
            vertical: size.shortestSide * 0.02),
        child: Container(
          height: size.shortestSide * 0.13,
          width: size.shortestSide * 0.95,
          decoration: bottomNavigationBarDecoration(size),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(size.shortestSide * 0.04),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
              child: Align(
                alignment: Alignment.center,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      bottomNavigationBarIcon(
                          size,
                          indexZero,
                          currentIndex == 0
                              ? FontAwesomeIcons.solidCompass
                              : FontAwesomeIcons.compass),
                      bottomNavigationBarIcon(
                          size,
                          indexOne,
                          currentIndex == 1
                              ? FontAwesomeIcons.solidBell
                              : FontAwesomeIcons.bell),
                      bottomNavigationBarIcon(
                          size,
                          indexTwo,
                          currentIndex == 2
                              ? FontAwesomeIcons.solidComments
                              : FontAwesomeIcons.comments),
                      bottomNavigationBarIcon(
                          size,
                          indexThree,
                          currentIndex == 3
                              ? FontAwesomeIcons.solidMap
                              : FontAwesomeIcons.map),
                      bottomNavigationBarIcon(
                          size,
                          indexFour,
                          currentIndex == 4
                              ? FontAwesomeIcons.solidUser
                              : FontAwesomeIcons.user)
                    ]),
              ),
            ),
          ),
        ),
      );

  Widget bottomNavigationBarIcon(
          Size size, Function()? onPressed, IconData? icon) =>
      IconButton(
          onPressed: onPressed,
          icon: Icon(icon,
              color: ThemeHelper.faintColor, size: size.shortestSide * 0.05));

  BoxDecoration bottomNavigationBarDecoration(Size size) => BoxDecoration(
      color: ThemeHelper.onSurfaceWithOpacity(0.9),
      borderRadius: BorderRadius.circular(size.shortestSide * 0.04));

  Function? indexZero() {
    if (currentIndex != 0) {
      pageController.jumpToPage(0);
    }
    setState(() {
      currentIndex = 0;
    });
  }

  Function? indexOne() {
    if (currentIndex != 1) {
      pageController.jumpToPage(1);
    }
    setState(() {
      currentIndex = 1;
    });
  }

  Function? indexTwo() {
    if (currentIndex != 2) {
      pageController.jumpToPage(2);
    }
    setState(() {
      currentIndex = 2;
    });
  }

  Function? indexThree() {
    if (currentIndex != 3) {
      pageController.jumpToPage(3);
    }
    setState(() {
      currentIndex = 3;
    });
  }

  Function? indexFour() {
    if (currentIndex != 4) {
      pageController.jumpToPage(4);
    }
    setState(() {
      currentIndex = 4;
    });
  }
}
