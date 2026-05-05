import 'package:flutter/material.dart';
import 'package:flutter_application_1/lesson8/calendarPage.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class CalendarApp extends StatefulWidget {
  CalendarApp({super.key});

  @override
  State<CalendarApp> createState() => _CalendarAppState();
}

class _CalendarAppState extends State<CalendarApp> {
  Locale _locale = Locale('ru');
  void _toggleLanguage() {
    setState(() {
      _locale = _locale.languageCode == 'ru' ? Locale('en') : Locale('ru');
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: _locale,
      supportedLocales: [Locale('ru'), Locale('en')],
      localizationsDelegates: [GlobalMaterialLocalizations.delegate],
      title: 'Календарь',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: const Color.fromARGB(255, 209, 148, 218),
      ),
      home: CalendarPage(onToggleLanguage: _toggleLanguage),
    );
  }
}
