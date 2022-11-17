import 'package:flutter/material.dart';
import 'package:travel_app_ui/theme/theme_constants.dart';
import 'package:travel_app_ui/theme/theme_manager.dart';
import 'package:travel_app_ui/ui/flow/flow_page.dart';

void main() {
  runApp(const MyApp());
}

ThemeManager _themeManager = ThemeManager();

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void dispose() {
    _themeManager.removeListener(themeListener);
    super.dispose();
  }

  @override
  void initState() {
    _themeManager.addListener(themeListener);
    //_themeManager.toggleTheme(true);
    super.initState();
  }

  themeListener() {
    if (mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: _themeManager.themeMode,
      debugShowCheckedModeBanner: false,
      home: const FlowPage(),
    );
  }
}
