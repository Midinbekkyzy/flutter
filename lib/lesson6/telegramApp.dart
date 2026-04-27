import 'package:flutter/material.dart';
import 'package:flutter_application_1/lesson6/homePage.dart';

class TelegramApp extends StatelessWidget {
  const TelegramApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Telegram Drawer',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: Color.fromARGB(255, 212, 243, 251),
        colorSchemeSeed: Color.fromARGB(255, 159, 207, 233),
        drawerTheme: DrawerThemeData(backgroundColor: Colors.white),
      ),
      home: HomePage(),
    );
  }
}
