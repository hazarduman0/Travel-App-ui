import 'dart:math';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_app_ui/core/constants/keys.dart';
import 'package:travel_app_ui/core/helper/theme_helper.dart';

class AnimatedMedia extends StatefulWidget {
  const AnimatedMedia({super.key});

  @override
  State<AnimatedMedia> createState() => _AnimatedMediaState();
}

class _AnimatedMediaState extends State<AnimatedMedia>
    with TickerProviderStateMixin {
  late AnimationController transitionAnimationController;
  late AnimationController transformAnimationController;
  late Animation<double> animation;
  late Animation<double> sizeAnimation;

  bool textTapped = false;

  @override
  void initState() {
    super.initState();
    transitionAnimationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));

    transformAnimationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 400));

    animation = CurvedAnimation(
        parent: transitionAnimationController, curve: Curves.elasticOut);

    final curvedAnimation = CurvedAnimation(
        parent: transformAnimationController, curve: Curves.linear);

    sizeAnimation = Tween<double>(begin: 0.6, end: 1).animate(curvedAnimation);

    transformAnimationController.forward();
    transitionAnimationController.forward();
  }

  @override
  dispose() {
    transitionAnimationController.dispose();
    transformAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizeTransition(
        sizeFactor: animation,
        axis: Axis.horizontal,
        axisAlignment: 0,
        child: AnimatedBuilder(
            animation: sizeAnimation,
            builder: (context, child) {
              return Container(
                height: size.shortestSide * 1.2 * sizeAnimation.value,
                width: size.shortestSide * 0.8 * sizeAnimation.value,
                decoration: mediaDecoration(size),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: size.shortestSide * 0.05,
                        vertical: size.shortestSide * 0.03),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        mediaLocationText(size),
                        mediaInfoText(size),
                        SizedBox(height: size.shortestSide * 0.02),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [mediaLocation(size), peopleCount(size)],
                        )
                      ],
                    ),
                  ),
                ),
              );
            }));
  }

  Widget peopleCount(Size size) => SizeTransition(
        sizeFactor: animation,
        axis: Axis.horizontal,
        axisAlignment: 0,
        child: AnimatedBuilder(
            animation: sizeAnimation,
            builder: (context, child) {
              return Container(
                height: size.shortestSide * 0.05 * sizeAnimation.value,
                width: size.shortestSide * 0.2 * sizeAnimation.value,
                decoration: BoxDecoration(
                    color: ThemeHelper.onSecondary,
                    borderRadius:
                        BorderRadius.circular(size.shortestSide * 0.02)),
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
            }),
      );

  Widget mediaLocation(Size size) => Row(
        children: [
          Icon(FontAwesomeIcons.locationDot,
              color: Colors.white, size: size.shortestSide * 0.03),
          SizedBox(width: size.shortestSide * 0.01),
          AutoSizeText('Sesimbra, Lisbon',
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(fontSize: 10.0, color: Colors.white))
        ],
      );

  Widget mediaLocationText(Size size) => AutoSizeText('Sesimbra & Arrabda',
      style: Theme.of(context)
          .textTheme
          .bodySmall!
          .copyWith(fontSize: 25.0, color: Colors.white));

  Widget mediaInfoText(Size size) => GestureDetector(
        onTap: () {
          setState(() {
            textTapped = !textTapped;
          });
        },
        child: AutoSizeText(
          shortShortLorem,
          style: Theme.of(context)
              .textTheme
              .bodySmall!
              .copyWith(fontSize: 10.0, color: Colors.white),
          maxLines: !textTapped ? 2 : 7,
          overflow: TextOverflow.ellipsis,
        ),
      );

  BoxDecoration mediaDecoration(Size size) => BoxDecoration(
      color: ThemeHelper.onSecondary,
      borderRadius: BorderRadius.circular(size.shortestSide * 0.05),
      image: const DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
              'https://images.unsplash.com/photo-1598267410503-d0ef01973f69?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fHZpZXd8ZW58MHx8MHx8&w=1000&q=80')));
}
