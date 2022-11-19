import 'package:flutter/material.dart';

class SliverSizedBox extends StatelessWidget {
  SliverSizedBox({super.key, this.height, this.width});

  double? height;
  double? width;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: height ?? 0,
        width: width ?? 0,
      ),
    );
  }
}
