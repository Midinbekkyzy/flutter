import 'package:flutter/material.dart';
import 'package:flutter_application_1/lesson7/registrationPage.dart';

class RegistrationApp extends StatelessWidget {
  RegistrationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Регистрация',
      home: RegistrationPage(),
    );
  }
}
