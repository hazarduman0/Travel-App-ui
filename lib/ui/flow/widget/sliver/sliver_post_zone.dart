import 'package:flutter/material.dart';
import 'package:travel_app_ui/ui/flow/widget/divider_widget.dart';
import 'package:travel_app_ui/ui/flow/widget/post_widget.dart';

class SliverPostZone extends StatelessWidget {
  const SliverPostZone({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SliverList(
        delegate: SliverChildBuilderDelegate((context, index) {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: size.shortestSide * 0.05, vertical: size.shortestSide * 0.01),
        child: Column(
          children: [
            const PostWidget(),
            SizedBox(height: size.shortestSide * 0.02),
            DividerWidget(thickness: 0.6, indent: size.shortestSide * 0.05)
          ],
        ),
      );
    }, childCount: 1));
  }
}
