import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_app_ui/core/constants/keys.dart';
import 'package:travel_app_ui/core/helper/theme_helper.dart';
import 'package:travel_app_ui/ui/flow/widget/circle_avatar.dart';

class CustomSliverAppBar extends StatelessWidget {
  const CustomSliverAppBar({super.key, required this.onClick});

  final VoidCallback onClick;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SliverAppBar(
      pinned: true,
      leading: IconButton(
          onPressed: onClick,
          icon: Icon(FontAwesomeIcons.alignLeft,
              color: ThemeHelper.blackAndWhite)),
      title: Text(title, style: Theme.of(context).textTheme.titleMedium),
      actions: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: size.shortestSide * 0.015),
          child: CustomCircleAvatar(minRadius: size.shortestSide * 0.05),
        )
      ],
    );
  }
}
