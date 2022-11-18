import 'package:flutter/material.dart';
import 'package:travel_app_ui/core/constants/app_colors.dart';
import 'package:travel_app_ui/main.dart';

class CustomCircleAvatar extends StatelessWidget {
  CustomCircleAvatar({super.key, required this.minRadius});

  double minRadius;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: size.shortestSide * 0.003,
          vertical: size.shortestSide * 0.003),
      decoration: circleDecoration,
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: size.shortestSide * 0.003,
            vertical: size.shortestSide * 0.003),
        decoration: innerCircleDecoration,
        child: CircleAvatar(
            minRadius: minRadius,
            backgroundImage: const NetworkImage(
                'https://shotkit.com/wp-content/uploads/2021/06/cool-profile-pic-matheus-ferrero.jpeg')),
      ),
    );
  }

  BoxDecoration get circleDecoration => BoxDecoration(
      color: themeManager.themeMode == ThemeMode.light
          ? COLOR_ONPRIMARY_LIGHT
          : COLOR_ONPRIMARY_DARK,
      shape: BoxShape.circle);

  BoxDecoration get innerCircleDecoration =>
      const BoxDecoration(color: Colors.white70, shape: BoxShape.circle);
}
