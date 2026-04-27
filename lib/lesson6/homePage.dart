import 'package:flutter/material.dart';
import 'package:flutter_application_1/lesson6/appDrawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Telegram')),
      drawer: AppDrawer(),
    );
  }
}
