import 'package:flutter/material.dart';
import 'package:travel_app_ui/core/helper/drawer_items.dart';
import 'package:travel_app_ui/core/helper/theme_helper.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return drawerWidget(size);
  }

  Widget drawerWidget(Size size) => SingleChildScrollView(
        child: Column(
          children: DrawerItems.all
              .map((de) => drawerListTile(() => null, de.icon, de.title, size))
              .toList(),
        ), 
      );

  Widget drawerListTile(
          Function()? onTap, IconData? icon, String? text, Size size) =>
      ListTile(
        onTap: onTap,
        leading: Icon(icon, color: ThemeHelper.faintColor, size: size.shortestSide * 0.06),
        title: Text(text ?? '', style: Theme.of(context).textTheme.bodyMedium),
        contentPadding: EdgeInsets.symmetric(
            horizontal: size.shortestSide * 0.05,
            vertical: size.shortestSide * 0.02),
      );
}
