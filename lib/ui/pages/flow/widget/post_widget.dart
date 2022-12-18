import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_app_ui/core/helper/theme_helper.dart';
import 'package:travel_app_ui/core/transition/fade_transition.dart';
import 'package:travel_app_ui/ui/pages/detail/post_detail.dart';
import 'package:travel_app_ui/ui/widget/circle_avatar.dart';
import 'package:travel_app_ui/ui/widget/hero_widget.dart';

class PostWidget extends StatefulWidget {
  const PostWidget({super.key});

  @override
  State<PostWidget> createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () => Navigator.push(
          context, FadePageTransition(widget: const PostDetailPage())),
      child: SizedBox(
        height: size.shortestSide * 0.8,
        width: size.shortestSide * 0.9,
        child: Card(
          child: Stack(
            children: [
              Positioned(
                  top: 0.0,
                  right: 0.0,
                  left: 0.0,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(size.shortestSide * 0.03),
                        topRight: Radius.circular(size.shortestSide * 0.03)),
                    child: HeroWidget(
                        tag: 'media',
                        widget: Image.network(
                            'https://img.freepik.com/free-photo/landscape-view-fields-mountains-banff-national-park-alberta-canada_181624-24968.jpg',
                            fit: BoxFit.cover,
                            height: size.shortestSide * 0.6,
                            width: size.shortestSide * 0.9)),
                  )),
              Positioned(
                  right: size.shortestSide * 0.05,
                  top: size.shortestSide * 0.03,
                  child: HeroWidget(
                      tag: 'circleavatar',
                      widget: CustomCircleAvatar(
                          minRadius: size.shortestSide * 0.035))),
              Positioned(
                  left: size.shortestSide * 0.03,
                  bottom: size.shortestSide * 0.25,
                  child: HeroWidget(
                      tag: 'title',
                      widget: AutoSizeText('Mount Fuji',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(color: Colors.white)))),
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
                        child: HeroWidget(
                            tag: 'postInfo',
                            widget: AutoSizeText('Lorem ipsum dolor sit amet',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .copyWith(fontSize: 17.0))),
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

  BoxDecoration bottomBoxDecoration(Size size) => BoxDecoration(
        color: ThemeHelper.surfaceColor,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(size.shortestSide * 0.02),
            topRight: Radius.circular(size.shortestSide * 0.02),
            bottomLeft: Radius.circular(size.shortestSide * 0.03),
            bottomRight: Radius.circular(size.shortestSide * 0.03)),
      );
}
