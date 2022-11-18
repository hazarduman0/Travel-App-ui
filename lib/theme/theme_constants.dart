import 'package:flutter/material.dart';
import 'package:travel_app_ui/core/constants/app_colors.dart';
import 'package:travel_app_ui/core/constants/textstyles.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  useMaterial3: true,
  //primaryColor: COLOR_PRIMARY,
  colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: COLOR_PRIMARY_LIGHT,
      onPrimary: COLOR_ONPRIMARY_LIGHT,
      secondary: COLOR_SECONDARY_LIGHT,
      onSecondary: COLOR_ONSECONDARY_LIGHT,
      error: COLOR_ERROR_LIGHT,
      onError: COLOR_ONERROR_LIGHT,
      background: COLOR_BACKGROUND_LIGHT,
      onBackground: COLOR_ONBACKGROUND_LIGHT,
      surface: COLOR_SURFACE_LIGHT,
      onSurface: COLOR_ONSURFACE_LIGHT),
  textTheme: TextTheme(
    bodyLarge: BODY_LARGE_LIGHT,
    bodyMedium: BODY_MEDIUM_LIGHT,
    bodySmall: BODY_SMALL_LIGHT,
    displayLarge: DISPLAY_LARGE_LIGHT,
    displayMedium: DISPLAY_MEDIUM_LIGHT,
    displaySmall: DISPLAY_SMALL_LIGHT,
    headlineLarge: HEADLINE_LARGE_LIGHT,
    headlineMedium: HEADLINE_MEDIUM_LIGHT,
    headlineSmall: HEADLINE_SMALL_LIGHT,
    labelLarge: LABEL_LARGE_LIGHT,
    labelMedium: LABEL_MEDIUM_LIGHT,
    labelSmall: LABEL_SMALL_LIGHT,
    titleLarge: TITLE_LARGE_LIGHT,
    titleMedium: TITLE_MEDIUM_LIGHT,
    titleSmall: TITLE_SMALL_LIGHT,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        backgroundColor: COLOR_ONSECONDARY_LIGHT,
        foregroundColor: Colors.white,
        elevation: 10.0,
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        textStyle: BUTTON_TEXTSTYLE),
  ),
  buttonTheme: ButtonThemeData(
      buttonColor: COLOR_ONSECONDARY_LIGHT,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      textTheme: ButtonTextTheme.normal),
  cardTheme: CardTheme(
      color: COLOR_ONSURFACE_LIGHT,
      elevation: 5.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0))),
  appBarTheme: const AppBarTheme(
      backgroundColor: COLOR_ONBACKGROUND_LIGHT,
      surfaceTintColor: COLOR_ONBACKGROUND_LIGHT,
      scrolledUnderElevation: 0.0,
      elevation: 0.0,
      centerTitle: true,
      iconTheme: IconThemeData(color: Colors.black87, size: 25.0)),
);

ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    useMaterial3: true,
    colorScheme: const ColorScheme(
        brightness: Brightness.dark,
        primary: COLOR_PRIMARY_DARK,
        onPrimary: COLOR_ONPRIMARY_DARK,
        secondary: COLOR_SECONDARY_DARK,
        onSecondary: COLOR_ONSECONDARY_DARK,
        error: COLOR_ERROR_DARK,
        onError: COLOR_ONERROR_DARK,
        background: COLOR_BACKGROUND_DARK,
        onBackground: COLOR_ONBACKGROUND_DARK,
        surface: COLOR_SURFACE_DARK,
        onSurface: COLOR_ONSURFACE_DARK),
    textTheme: TextTheme(
      bodyLarge: BODY_LARGE_DARK,
      bodyMedium: BODY_MEDIUM_DARK,
      bodySmall: BODY_SMALL_DARK,
      displayLarge: DISPLAY_LARGE_DARK,
      displayMedium: DISPLAY_MEDIUM_DARK,
      displaySmall: DISPLAY_SMALL_DARK,
      headlineLarge: HEADLINE_LARGE_DARK,
      headlineMedium: HEADLINE_MEDIUM_DARK,
      headlineSmall: HEADLINE_SMALL_DARK,
      labelLarge: LABEL_LARGE_DARK,
      labelMedium: LABEL_MEDIUM_DARK,
      labelSmall: LABEL_SMALL_DARK,
      titleLarge: TITLE_LARGE_DARK,
      titleMedium: TITLE_MEDIUM_DARK,
      titleSmall: TITLE_SMALL_DARK,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          backgroundColor: COLOR_ONSECONDARY_DARK,
          foregroundColor: Colors.white,
          elevation: 10.0,
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          textStyle: BUTTON_TEXTSTYLE),
    ),
    buttonTheme: ButtonThemeData(
        buttonColor: COLOR_ONSECONDARY_DARK,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        textTheme: ButtonTextTheme.normal),
    cardTheme: CardTheme(
        color: COLOR_ONSURFACE_DARK,
        elevation: 5.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0))),
    appBarTheme: const AppBarTheme(
        backgroundColor: COLOR_ONBACKGROUND_DARK,
        surfaceTintColor: COLOR_ONBACKGROUND_DARK,
        elevation: 0.0,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white70, size: 25.0)));
