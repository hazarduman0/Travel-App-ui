import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:travel_app_ui/ui/flow/widget/story_box.dart';

class SliverStory extends StatelessWidget {
  const SliverStory({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SliverToBoxAdapter(
      child: SizedBox(
        height: size.height * 0.15,
        width: size.width,
        child: ListView.builder(
          physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          padding: EdgeInsets.symmetric(
              horizontal: size.shortestSide * 0.05,
              vertical: size.shortestSide * 0.03),
          scrollDirection: Axis.horizontal,
          itemCount: 15,
          itemBuilder: (context, index) {
            return Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: size.shortestSide * 0.01),
              child: const StoryBox(),
            );
          },
        ),
      ),
    );
  }
}
