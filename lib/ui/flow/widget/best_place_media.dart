import 'dart:math';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_app_ui/core/helper/theme_helper.dart';

class BestPlaceMedia extends StatelessWidget {
  const BestPlaceMedia({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.shortestSide * 0.35,
      width: size.shortestSide * 0.7,
      decoration: bestPlaceMediaDecoration(size),
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: size.shortestSide * 0.04,
            vertical: size.shortestSide * 0.01),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                mediaLocationText(size, context),
                mediaLocation(size, context),
              ]),
              const Spacer(flex: 3),
              _peopleCount(size, context),
              const Spacer(flex: 1)
            ])
          ],
        ),
      ),
    );
  }

  Widget _peopleCount(Size size, BuildContext context) => Container(
        height: size.shortestSide * 0.05,
        width: size.shortestSide * 0.15,
        decoration: BoxDecoration(
            color: ThemeHelper.onSecondary,
            borderRadius: BorderRadius.circular(size.shortestSide * 0.02)),
        child: Align(
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(FontAwesomeIcons.usersRays,
                  color: Colors.white, size: size.shortestSide * 0.03),
              AutoSizeText('${Random().nextInt(500) + 1}',
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(fontSize: 15.0, color: Colors.white))
            ],
          ),
        ),
      );

  Widget mediaLocation(Size size, BuildContext context) => Row(
        children: [
          Icon(FontAwesomeIcons.locationDot,
              color: Colors.white, size: size.shortestSide * 0.04),
          SizedBox(width: size.shortestSide * 0.01),
          AutoSizeText('Sesimbra, Lisbon',
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(fontSize: 10.0, color: Colors.white))
        ],
      );

  Widget mediaLocationText(Size size, BuildContext context) =>
      AutoSizeText('Sesimbra & Arrabda',
          style: Theme.of(context)
              .textTheme
              .bodySmall!
              .copyWith(fontSize: 15.0, color: Colors.white));

  BoxDecoration bestPlaceMediaDecoration(Size size) => BoxDecoration(
      color: ThemeHelper.onSecondary,
      borderRadius: BorderRadius.circular(size.shortestSide * 0.03),
      image: const DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
              'https://images.unsplash.com/photo-1598267410503-d0ef01973f69?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fHZpZXd8ZW58MHx8MHx8&w=1000&q=80')));
}
