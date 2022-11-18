import 'package:flutter/material.dart';
import 'package:travel_app_ui/core/helper/theme_helper.dart';
import 'package:travel_app_ui/ui/flow/widget/sliver/sliver_appbar.dart';
import 'package:travel_app_ui/ui/flow/widget/sliver/sliver_my_location.dart';
import 'package:travel_app_ui/ui/flow/widget/sliver/sliver_story.dart';

class FlowPage extends StatelessWidget {
  const FlowPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: ThemeHelper.backgroundColor,
        body: const CustomScrollView(
          physics:
              BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          slivers: [CustomSliverAppBar(), SliverStory(), SliverMyLocation()],
        ));
  }
}
