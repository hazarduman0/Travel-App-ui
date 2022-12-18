import 'package:flutter/material.dart';
import 'package:travel_app_ui/core/helper/theme_helper.dart';

class DividerWidget extends StatelessWidget {
  DividerWidget({super.key, this.thickness, this.indent});

  double? thickness;
  double? indent;

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: ThemeHelper.onSurface,
      thickness: thickness ?? 1.0,
      indent: indent ?? 0.0,
      endIndent: indent ?? 0.0,
    );
  }
}
