import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_app_ui/core/helper/theme_helper.dart';
import 'package:travel_app_ui/ui/flow/flow_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: ThemeHelper.backgroundColor,
      body: Stack(
        children: [
          PageView(
            physics: const NeverScrollableScrollPhysics(),
            children: [FlowPage()]),
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
                          size, () {}, FontAwesomeIcons.solidCompass),
                      bottomNavigationBarIcon(
                          size, () {}, FontAwesomeIcons.solidBell),
                      bottomNavigationBarIcon(
                          size, () {}, FontAwesomeIcons.solidComments),
                      bottomNavigationBarIcon(
                          size, () {}, FontAwesomeIcons.mapLocation),
                      bottomNavigationBarIcon(
                          size, () {}, FontAwesomeIcons.solidUser)
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
}
