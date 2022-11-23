import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_app_ui/core/constants/keys.dart';
import 'package:travel_app_ui/core/helper/theme_helper.dart';
import 'package:travel_app_ui/ui/hero_widget.dart';

class SliverPostInfo extends StatelessWidget {
  const SliverPostInfo({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: size.shortestSide * 0.03,
            vertical: size.shortestSide * 0.03),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeroWidget(
                tag: 'postInfo',
                widget: AutoSizeText(shortLoremIpsum,
                    style: Theme.of(context).textTheme.bodyMedium)),
            SizedBox(height: size.shortestSide * 0.01),
            Row(
              children: [likeCount(size, context), commentCount(size, context)],
            )
          ],
        ),
      ),
    );
  }

  Row likeCount(Size size, BuildContext context) => Row(
        children: [
          HeroWidget(
              tag: 'like',
              widget: IconButton(
                  onPressed: () {},
                  icon: Icon(FontAwesomeIcons.solidHeart,
                      color: ThemeHelper.onErrorColor))),
          SizedBox(width: size.width * 0.01),
          HeroWidget(
              tag: 'likeCount',
              widget: AutoSizeText('24',
                  style: Theme.of(context).textTheme.bodyMedium))
        ],
      );

  Row commentCount(Size size, BuildContext context) => Row(
        children: [
          HeroWidget(
              tag: 'comment',
              widget: IconButton(
                  onPressed: () {},
                  icon: Icon(FontAwesomeIcons.comment,
                      color: ThemeHelper.faintColor))),
          SizedBox(width: size.width * 0.01),
          HeroWidget(
              tag: 'commentCount',
              widget: AutoSizeText('8',
                  style: Theme.of(context).textTheme.bodyMedium))
        ],
      );
}
