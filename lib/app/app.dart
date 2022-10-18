import 'package:flutter/material.dart';
import 'package:thestream/presentation/_resources/routes_manager.dart';
import 'package:thestream/presentation/_resources/theme_manager.dart';

class MainApp extends StatefulWidget {
  const MainApp._internal();

  static MainApp instance = const MainApp._internal();

  factory MainApp() => instance;

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      onGenerateRoute: RouteGenerator.getRoute,
      theme: ThemeManager.getApplicationTheme(),
      initialRoute: Routes.splashRoute,
    );
  }
}
