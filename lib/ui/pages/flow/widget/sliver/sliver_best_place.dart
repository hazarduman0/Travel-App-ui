import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:travel_app_ui/core/constants/keys.dart';
import 'package:travel_app_ui/ui/pages/flow/widget/best_place_media.dart';

class SliverBestPlace extends StatefulWidget {
  const SliverBestPlace({super.key});

  @override
  State<SliverBestPlace> createState() => _SliverBestPlaceState();
}

class _SliverBestPlaceState extends State<SliverBestPlace> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SliverToBoxAdapter(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size.shortestSide * 0.04),
            child: Align(
              alignment: Alignment.topLeft,
              child: AutoSizeText(bestPlace,
                  style: Theme.of(context).textTheme.bodyLarge),
            ),
          ),
          SizedBox(
            height: size.shortestSide * 0.4,
            width: size.width,
            child: ListView.builder(
                itemCount: 7,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: size.shortestSide * 0.03),
                    child: const BestPlaceMedia(),
                  );
                }),
          )
        ],
      ),
    );
  }
}
