import 'package:flutter/material.dart';
import 'package:mobo_project/my_navigation_menu.dart';
import 'package:mobo_project/data/utils/theme/my_theme.dart';

void main() {

  // Todo: Add Widgets Binding
  // Todo: Init Local Storage
  // Todo: Await Native Splash
  // Todo: Initialize Firebase or Backend
  // Todo: Initialize Authentication

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: MyAppTheme.lightTheme,
      darkTheme: MyAppTheme.darkTheme,
      home: const MyNavigationMenu(),
    );
  }
}
