import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:travel_app_ui/core/helper/theme_helper.dart';
import 'package:travel_app_ui/ui/widget/drawer_widget.dart';
import 'package:travel_app_ui/ui/widget/home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late double xOffset;
  late double yOffset;
  late double scaleFactor;
  late bool isDrawerOpen;
  bool isDragging = false;

  @override
  void initState() {
    super.initState();
    closeDrawer();
  }

  void openDrawer() => setState(() {
        xOffset =
            window.physicalSize.shortestSide / window.devicePixelRatio * 0.6;
        yOffset =
            window.physicalSize.shortestSide / window.devicePixelRatio * 0.4;
        scaleFactor = 0.6;
        isDrawerOpen = true;
      });

  void closeDrawer() => setState(() {
        xOffset = 0;
        yOffset = 0;
        scaleFactor = 1;
        isDrawerOpen = false;
      });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: ThemeHelper.backgroundColor,
      body: Stack(
        children: [buildDrawer(), buildPage(size)],
      ),
    );
  }

  Widget buildDrawer() =>  SafeArea(child: SizedBox(
    width: xOffset,
    child: const DrawerWidget()));

  Widget buildPage(Size size) {
    return WillPopScope(
      onWillPop: () async {
        if (isDrawerOpen) {
          closeDrawer();
          return false;
        } else {
          return true;
        }
      },
      child: GestureDetector(
        onTap: closeDrawer,
        onHorizontalDragStart: (details) => isDragging = true,
        onHorizontalDragUpdate: (details) {
          if (!isDragging) return;
          const delta = 1;
          if (details.delta.dx > delta) {
            openDrawer();
          } else if (details.delta.dx < -delta) {
            closeDrawer();
          }

          isDragging = false;
        },
        child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            transform: Matrix4.translationValues(xOffset, yOffset, 0)
              ..scale(scaleFactor),
            child: AbsorbPointer(
                absorbing: isDrawerOpen,
                child: ClipRRect(
                  borderRadius: isDrawerOpen
                      ? BorderRadius.circular(size.shortestSide * 0.07)
                      : BorderRadius.circular(0.0),
                  child: Container(
                    color: isDrawerOpen
                        ? ThemeHelper.transparentColor
                        : ThemeHelper.backgroundColor,
                    child: HomePage(openDrawer: () => openDrawer()),
                  ),
                ))),
      ),
    );
  }
}
