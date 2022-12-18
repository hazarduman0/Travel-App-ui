import 'dart:math';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:travel_app_ui/core/helper/theme_helper.dart';

class StoryBox extends StatelessWidget {
  const StoryBox({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: size.shortestSide * 0.15,
              width: size.shortestSide * 0.15,
              margin: EdgeInsets.symmetric(
                  horizontal: size.shortestSide * 0.02,
                  vertical: size.shortestSide * 0.02),
              decoration: imageBoxDecoration(size),
            ),
            Positioned(
                right: 0.0,
                child: Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: size.shortestSide * 0.01,
                      vertical: size.shortestSide * 0.01),
                  decoration: counterBoxDecoration(size),
                  child: AutoSizeText('+${Random().nextInt(20) + 1}',
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .copyWith(color: Colors.white)),
                ))
          ],
        ),
        SizedBox(
          width: size.shortestSide * 0.2,
          child: Align(
            alignment: Alignment.center,
            child: AutoSizeText('Hesap_Adi',
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(overflow: TextOverflow.ellipsis)),
          ),
        )
      ],
    );
  }

  BoxDecoration imageBoxDecoration(Size size) => BoxDecoration(
      borderRadius: BorderRadius.circular(size.shortestSide * 0.02),
      color: ThemeHelper.onPrimaryColor,
      image: const DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
              'https://st.depositphotos.com/1734628/2991/i/450/depositphotos_29912095-stock-photo-the-view-from-the-terraces.jpg')));

  BoxDecoration counterBoxDecoration(Size size) => BoxDecoration(
      color: ThemeHelper.onErrorColor,
      borderRadius: BorderRadius.circular(size.shortestSide * 0.03));
}
