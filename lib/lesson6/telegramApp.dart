import 'package:flutter/material.dart';
import 'package:flutter_application_1/lesson6/homePage.dart';

class TelegramApp extends StatefulWidget {
  const TelegramApp({super.key});

  @override
  State<TelegramApp> createState() => TelegramAppState();
}

class TelegramAppState extends State<TelegramApp> {
  ThemeMode themeMode = ThemeMode.light;

  void toggleTheme(bool isDark) {
    setState(() {
      themeMode = isDark ? ThemeMode.dark : ThemeMode.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Telegram Drawer',

      themeMode: themeMode,

      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
        scaffoldBackgroundColor: const Color.fromARGB(255, 212, 243, 251),
        colorSchemeSeed: const Color.fromARGB(255, 159, 207, 233),
        drawerTheme: const DrawerThemeData(backgroundColor: Colors.white),
      ),

      darkTheme: ThemeData(brightness: Brightness.dark),

      home: HomePage(onThemeChanged: toggleTheme, themeMode: themeMode),
    );
  }
}
