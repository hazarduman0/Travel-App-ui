import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_app_ui/core/constants/app_colors.dart';
import 'package:travel_app_ui/core/constants/keys.dart';
import 'package:travel_app_ui/core/helper/theme_helper.dart';
import 'package:travel_app_ui/ui/flow/widget/animated_media.dart';

class SliverMyLocation extends StatefulWidget {
  const SliverMyLocation({super.key});

  @override
  State<SliverMyLocation> createState() => _SliverMyLocationState();
}

class _SliverMyLocationState extends State<SliverMyLocation> {
  bool isTapped = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SliverToBoxAdapter(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size.shortestSide * 0.04),
            child: Align(
              alignment: Alignment.topLeft,
              child: AutoSizeText(myLocation,
                  style: Theme.of(context).textTheme.bodyLarge),
            ),
          ),
          SizedBox(height: size.height * 0.02),
          AnimatedContainer(
              duration: const Duration(seconds: 1),
              curve: Curves.linear,
              child: !isTapped ? locationInfo(size) : locationMedias(size))
        ],
      ),
    );
  }

  Widget locationInfo(Size size) => Align(
        alignment: Alignment.center,
        child: Padding(
          padding: EdgeInsets.only(
              right: size.shortestSide * 0.03,
              left: size.shortestSide * 0.03,
              bottom: size.shortestSide * 0.05),
          child: Container(
            width: size.shortestSide * 0.9,
            decoration: locationInfoDecoration(size),
            child: Column(
              children: [
                bookMarkIcon(size),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  SizedBox(width: size.shortestSide * 0.03),
                  Container(
                      height: size.shortestSide * 0.17,
                      width: size.shortestSide * 0.17,
                      decoration: imageDecoration(size)),
                  const Spacer(flex: 1),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      titleText,
                      locationInformation(size),
                    ],
                  ),
                  const Spacer(flex: 3)
                ]),
                SizedBox(height: size.shortestSide * 0.03),
                locationMoreInfoText(size),
                SizedBox(height: size.shortestSide * 0.05),
                takeaPeekButton(size),
                SizedBox(height: size.shortestSide * 0.05)
              ],
            ),
          ),
        ),
      );

  Widget locationMedias(Size size) => SizedBox(
        height: size.shortestSide * 1.3,
        width: size.width,
        child: ListView.builder(
            physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics()),
            scrollDirection: Axis.horizontal,
            itemCount: 7,
            itemBuilder: (context, index) {
              return Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: size.shortestSide * 0.03),
                child: const AnimatedMedia(),
              );
            }),
      );

  // Widget locationMedias(Size size) => SizedBox(
  //     height: size.shortestSide * 1.2,
  //     width: size.width,
  //     child: ListView(
  //         physics: const BouncingScrollPhysics(
  //             parent: AlwaysScrollableScrollPhysics()),
  //         scrollDirection: Axis.horizontal,
  //         children: lisViewWidgets(size)));

  // Widget locationMedias(Size size) => SizedBox(
  //     height: size.shortestSide * 1.2,
  //     width: size.width,
  //     child: SingleChildScrollView(
  //         physics: const BouncingScrollPhysics(
  //             parent: AlwaysScrollableScrollPhysics()),
  //         scrollDirection: Axis.horizontal,
  //         child: Row(children: lisViewWidgets(size))));

  // List<Widget> lisViewWidgets(Size size) => List.generate(
  //     7,
  //     (index) => Padding(
  //           padding: EdgeInsets.symmetric(horizontal: size.shortestSide * 0.03),
  //           child: const AnimatedMedia(),
  //         ));

  Widget bookMarkIcon(Size size) => Align(
        alignment: Alignment.topRight,
        child: Padding(
          padding: EdgeInsets.only(right: size.shortestSide * 0.04),
          child: Icon(FontAwesomeIcons.solidBookmark,
              color: ThemeHelper.onSecondary, size: size.shortestSide * 0.08),
        ),
      );

  BoxDecoration locationInfoDecoration(Size size) => BoxDecoration(
      color: ThemeHelper.isLight ? COLOR_SURFACE_LIGHT : COLOR_SURFACE_DARK,
      borderRadius: BorderRadius.circular(size.shortestSide * 0.03));

  BoxDecoration imageDecoration(Size size) => BoxDecoration(
      color: ThemeHelper.backgroundColor,
      borderRadius: BorderRadius.circular(size.shortestSide * 0.03),
      image: const DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
              'https://i.guim.co.uk/img/media/bf48c81421313e74475763bd7dcbe9ac6735de97/388_666_6112_3668/master/6112.jpg?width=1200&height=900&quality=85&auto=format&fit=crop&s=82a620182f39342739d1401ab488ff44')));

  Widget get titleText => AutoSizeText('Winter in Portugal',
      style: Theme.of(context).textTheme.bodySmall!.copyWith(fontSize: 20.0));

  Widget locationInformation(Size size) => Row(
        children: [
          Icon(FontAwesomeIcons.locationDot,
              color: ThemeHelper.onSecondary, size: size.shortestSide * 0.05),
          SizedBox(width: size.shortestSide * 0.01),
          AutoSizeText('Lisbon',
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(fontSize: 15.0, color: ThemeHelper.faintColor))
        ],
      );

  Widget locationMoreInfoText(Size size) => Padding(
        padding: EdgeInsets.symmetric(horizontal: size.shortestSide * 0.02),
        child: AutoSizeText(shortLoremIpsum,
            style: Theme.of(context)
                .textTheme
                .bodySmall!
                .copyWith(fontSize: 15.0, color: ThemeHelper.faintColor)),
      );

  Widget takeaPeekButton(Size size) => ElevatedButton(
      onPressed: () {
        setState(() {
          isTapped = true;
        });
      },
      style: ElevatedButton.styleFrom(
          elevation: 0.0,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(size.shortestSide * 0.02))),
      child: const Text('Take a Peek ->'));
}
