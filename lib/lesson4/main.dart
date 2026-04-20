import 'package:flutter/material.dart';
import 'package:flutter_application_1/lesson4/gridViewApp.dart';
import 'package:flutter_application_1/lesson4/newsApp.dart';
import 'package:flutter_application_1/lesson4/newsHome.dart';
import 'package:flutter_application_1/lesson4/pageViewApp.dart';

void main() => runApp(NewsApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Статья')),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Заголовок',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Text('Текст длинююююююющий..../n' * 40),
              SizedBox(height: 20),
              ElevatedButton(onPressed: () {}, child: Text('Сохранить')),
            ],
          ),
        ),
      ),
    );
  }
}
