import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_app_ui/core/helper/theme_helper.dart';
import 'package:travel_app_ui/ui/flow/widget/circle_avatar.dart';
import 'package:travel_app_ui/ui/hero_widget.dart';

class PostSliverAppBar extends StatelessWidget {
  const PostSliverAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SliverAppBar(
      leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(FontAwesomeIcons.arrowLeft,
              color: ThemeHelper.blackAndWhite,
              size: size.shortestSide * 0.06)),
      actions: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: size.shortestSide * 0.04),
          child: HeroWidget(
              tag: 'circleavatar',
              widget: CustomCircleAvatar(minRadius: size.shortestSide * 0.05)),
        )
      ],
      backgroundColor: Colors.transparent,
      stretch: true,
      expandedHeight: size.shortestSide * 0.7,
      flexibleSpace: FlexibleSpaceBar(
        stretchModes: const [
          StretchMode.zoomBackground,
          StretchMode.fadeTitle,
          StretchMode.blurBackground
        ],
        titlePadding:
            EdgeInsets.symmetric(horizontal: size.shortestSide * 0.15),
        title: HeroWidget(
            tag: 'title',
            widget: AutoSizeText('Mount Fuji',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(color: Colors.white))),
        background: HeroWidget(
            tag: 'media',
            widget: Image.network(
              'https://img.freepik.com/free-photo/landscape-view-fields-mountains-banff-national-park-alberta-canada_181624-24968.jpg',
              fit: BoxFit.cover,
            )),
      ),
    );
  }
}
