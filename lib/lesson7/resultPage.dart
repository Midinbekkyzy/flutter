import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final String name;
  final String surname;
  final String phone;
  final String email;
  final String login;
  final String password;

  ResultPage({
    super.key,
    required this.name,
    required this.surname,
    required this.phone,
    required this.email,
    required this.login,
    required this.password,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Данные пользователя')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Имя: $name'),
            Text('Фамилия: $surname'),
            Text('Телефон: $phone'),
            Text('Email: $email'),
            Text('Логин: $login'),
          ],
        ),
      ),
    );
  }
}
