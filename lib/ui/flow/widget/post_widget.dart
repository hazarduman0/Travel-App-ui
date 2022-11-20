import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_app_ui/core/helper/theme_helper.dart';
import 'package:travel_app_ui/ui/flow/widget/circle_avatar.dart';

class PostWidget extends StatefulWidget {
  const PostWidget({super.key});

  @override
  State<PostWidget> createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.shortestSide * 0.8,
      width: size.shortestSide * 0.9,
      child: Card(
        elevation: 2.0,
        child: Stack(
          children: [
            Positioned(
              top: 0.0,
              right: 0.0,
              left: 0.0,
              child: Container(
                height: size.shortestSide * 0.6,
                width: size.shortestSide * 0.9,
                decoration: imageBoxDecoration(size),
                child: Stack(children: [
                  Positioned(
                      right: size.shortestSide * 0.05,
                      top: size.shortestSide * 0.03,
                      child: CustomCircleAvatar(
                          minRadius: size.shortestSide * 0.035)),
                  Positioned(
                      left: size.shortestSide * 0.03,
                      bottom: size.shortestSide * 0.06,
                      child: AutoSizeText('Mount Fuji',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(color: Colors.white)))
                ]),
              ),
            ),
            Positioned(
              bottom: 0.0,
              right: 0.0,
              left: 0.0,
              child: Container(
                height: size.shortestSide * 0.24,
                width: size.shortestSide * 0.9,
                decoration: bottomBoxDecoration(size),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: size.shortestSide * 0.02,
                          vertical: size.shortestSide * 0.02),
                      child: AutoSizeText('Lorem ipsum dolor sit amet',
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(fontSize: 17.0)),
                    ),
                    Row(
                      children: [
                        likeCount(size, context),
                        SizedBox(width: size.shortestSide * 0.03),
                        commentCount(size, context)
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Row likeCount(Size size, BuildContext context) => Row(
        children: [
          IconButton(
              onPressed: () {},
              icon: Icon(FontAwesomeIcons.solidHeart,
                  color: ThemeHelper.onErrorColor)),
          SizedBox(width: size.width * 0.01),
          AutoSizeText('24', style: Theme.of(context).textTheme.bodyMedium)
        ],
      );

  Row commentCount(Size size, BuildContext context) => Row(
        children: [
          IconButton(
              onPressed: () {},
              icon: Icon(FontAwesomeIcons.comment,
                  color: ThemeHelper.faintColor)),
          SizedBox(width: size.width * 0.01),
          AutoSizeText('8', style: Theme.of(context).textTheme.bodyMedium)
        ],
      );

  BoxDecoration imageBoxDecoration(Size size) => BoxDecoration(
      color: ThemeHelper.onPrimaryColor,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(size.shortestSide * 0.03),
        topRight: Radius.circular(size.shortestSide * 0.03),
      ),
      image: const DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
              'https://img.freepik.com/free-photo/landscape-view-fields-mountains-banff-national-park-alberta-canada_181624-24968.jpg')));

  BoxDecoration bottomBoxDecoration(Size size) => BoxDecoration(
        color: ThemeHelper.surfaceColor,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(size.shortestSide * 0.02),
            topRight: Radius.circular(size.shortestSide * 0.02),
            bottomLeft: Radius.circular(size.shortestSide * 0.03),
            bottomRight: Radius.circular(size.shortestSide * 0.03)),
      );
}
