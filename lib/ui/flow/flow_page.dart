import 'package:flutter/material.dart';
import 'package:travel_app_ui/ui/flow/widget/sliver/sliver_appbar.dart';
import 'package:travel_app_ui/ui/flow/widget/sliver/sliver_best_place.dart';
import 'package:travel_app_ui/ui/flow/widget/sliver/sliver_divider.dart';
import 'package:travel_app_ui/ui/flow/widget/sliver/sliver_my_location.dart';
import 'package:travel_app_ui/ui/flow/widget/sliver/sliver_post_zone.dart';
import 'package:travel_app_ui/ui/flow/widget/sliver/sliver_sized_box.dart';
import 'package:travel_app_ui/ui/flow/widget/sliver/sliver_story.dart';

class FlowPage extends StatelessWidget {
  const FlowPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return CustomScrollView(
      physics:
          const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
      slivers: [
        const CustomSliverAppBar(),
        const SliverStory(),
        const SliverMyLocation(),
        const SliverBestPlace(),
        SliverSizedBox(height: size.shortestSide * 0.05),
        const SliverDivider(),
        SliverSizedBox(height: size.shortestSide * 0.05),
        const SliverPostZone()
      ],
    );
  }
}
