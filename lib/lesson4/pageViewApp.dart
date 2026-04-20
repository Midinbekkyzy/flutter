import 'package:flutter/material.dart';

class PageViewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Пример Page View')),
        body: PageView(
          children: [
            page('Welcome', Colors.white),
            page('New app', Colors.black),
            page('Let`s go!', Colors.red),
          ],
        ),
      ),
    );
  }
}

Widget page(String text, Color color) {
  return Container(
    color: color,
    child: Center(
      child: Text(
        text,
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.indigo,
        ),
      ),
    ),
  );
}
