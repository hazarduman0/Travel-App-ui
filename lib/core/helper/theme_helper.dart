import 'package:flutter/material.dart';
import 'package:travel_app_ui/core/constants/app_colors.dart';
import 'package:travel_app_ui/main.dart';

class ThemeHelper {
  static bool isLight = themeManager.themeMode == ThemeMode.light;

  static Color onPrimaryColor =
      isLight ? COLOR_ONPRIMARY_LIGHT : COLOR_ONPRIMARY_DARK;

  static Color onErrorColor =
      isLight ? COLOR_ONERROR_LIGHT : COLOR_ONERROR_DARK;

  static Color blackAndWhite = isLight ? Colors.black87 : Colors.white70;

  static Color backgroundColor =
      isLight ? COLOR_ONBACKGROUND_LIGHT : COLOR_ONBACKGROUND_DARK;

  static Color onSecondary =
      isLight ? COLOR_ONSECONDARY_LIGHT : COLOR_ONSECONDARY_DARK;

  static Color faintColor =
      isLight ? Colors.black45 : const Color.fromARGB(255, 173, 173, 173);

  static Color surfaceColor =
      isLight ? COLOR_SURFACE_LIGHT : COLOR_SURFACE_DARK;    

  static Color onSurface =
      isLight ? COLOR_ONSURFACE_LIGHT : COLOR_ONSURFACE_DARK;

  static Color onSurfaceWithOpacity(double opacity) => isLight
      ? COLOR_ONSURFACE_LIGHT.withOpacity(opacity)
      : COLOR_ONSURFACE_DARK.withOpacity(opacity);
}
