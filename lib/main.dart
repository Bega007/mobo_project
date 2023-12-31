import 'package:flutter/material.dart';
import 'package:mobo_project/features/presentation/screens/login/my_login_screen.dart';
import 'package:mobo_project/config/theme/my_theme.dart';

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
      home: const MyLoginScreen(),
    );
  }
}
