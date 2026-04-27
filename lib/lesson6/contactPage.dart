import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Контакты')),
      body: Center(
        child: Text('Список контактов', style: TextStyle(fontSize: 20)),
      ),
    );
  }
}
