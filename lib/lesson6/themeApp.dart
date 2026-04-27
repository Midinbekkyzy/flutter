import 'package:flutter/material.dart';

class ThemeApp extends StatefulWidget {
  ThemeApp({super.key});

  @override
  State<ThemeApp> createState() => ThemeAppState();
}

class ThemeAppState extends State<ThemeApp> {
  ThemeMode themeMode = ThemeMode.light;

  void toggleTheme() {
    setState(() {
      themeMode =
          themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Theme Practice',
      themeMode: themeMode,
      theme: ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(backgroundColor: Colors.blueAccent),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.blueAccent,
        ),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black,
        appBarTheme: AppBarTheme(
          backgroundColor: const Color.fromARGB(255, 40, 76, 106),
        ),
      ),
      home: HomePage(onToggleTheme: toggleTheme, themeMode: themeMode),
    );
  }
}

class HomePage extends StatelessWidget {
  final VoidCallback onToggleTheme;
  final ThemeMode themeMode;

  const HomePage({
    super.key,
    required this.onToggleTheme,
    required this.themeMode,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Пример ThemeMode и ThemeData')),
      floatingActionButton: FloatingActionButton(
        onPressed: onToggleTheme,
        child: Icon(
          themeMode == ThemeMode.light ? Icons.dark_mode : Icons.light_mode,
        ),
      ),
      body: Center(
        child: Text(
          themeMode == ThemeMode.light ? 'Светлая тема' : 'Темная тема',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
