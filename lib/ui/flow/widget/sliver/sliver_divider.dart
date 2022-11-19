import 'package:flutter/material.dart';
import 'package:travel_app_ui/ui/flow/widget/divider_widget.dart';

class SliverDivider extends StatelessWidget {
  const SliverDivider({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SliverToBoxAdapter(
      child: DividerWidget(indent: size.shortestSide * 0.02, thickness: 0.8),
    );
  }
}
