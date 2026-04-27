import 'package:flutter/material.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Помощь')),
      body: Center(
        child: Text('Список помощи', style: TextStyle(fontSize: 20)),
      ),
    );
  }
}
