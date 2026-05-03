import 'package:flutter/material.dart';
import 'package:flutter_application_1/lesson7/resultPage.dart';

class RegistrationPage extends StatefulWidget {
  RegistrationPage({super.key});

  @override
  State<StatefulWidget> createState() => RegistrationPageState();
}

class RegistrationPageState extends State<RegistrationPage> {
  final formKey = GlobalKey<FormState>();

  final nameController = TextEditingController();
  final surnameController = TextEditingController();
  final phoneController = TextEditingController();
  final emailController = TextEditingController();
  final loginController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    surnameController.dispose();
    phoneController.dispose();
    emailController.dispose();
    loginController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  void submitform() {
    if (formKey.currentState!.validate()) {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Подтверждение'),
            content: SingleChildScrollView(
              child: ListBody(
                children: [
                  Text('Имя: ${nameController.text}'),
                  Text('Фамилия: ${surnameController.text}'),
                  Text('Телефон: ${phoneController.text}'),
                  Text('Email: ${emailController.text}'),
                  Text('Логин: ${loginController.text}'),
                ],
              ),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context); // закрыть диалог
                },
                child: Text('Отмена'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context); // закрыть диалог

                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Регистрация прошла успешно!')),
                  );

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder:
                          (_) => ResultPage(
                            name: nameController.text,
                            surname: surnameController.text,
                            phone: phoneController.text,
                            email: emailController.text,
                            login: loginController.text,
                            password: passwordController.text,
                          ),
                    ),
                  );
                },
                child: Text('ОК'),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Регистрация')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              buildTextField(
                controller: nameController,
                label: 'Имя',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Введите имя';
                  }
                  if (!RegExp(r'^[a-zA-Zа-яА-ЯёЁ]+$').hasMatch(value)) {
                    return 'Только буквы';
                  }
                  return null;
                },
              ),
              buildTextField(
                controller: surnameController,
                label: 'Фамилия',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Введите фамилию';
                  }
                  if (!RegExp(r'^[a-zA-Zа-яА-ЯёЁ]+$').hasMatch(value)) {
                    return 'Только буквы';
                  }
                  return null;
                },
              ),
              buildTextField(
                controller: phoneController,
                label: 'Телефон',
                keyboardType: TextInputType.phone,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Введите телефон';
                  }
                  if (!RegExp(r'^\+?[0-9]{1,15}$').hasMatch(value)) {
                    return 'Неверный формат телефона';
                  }
                  return null;
                },
              ),
              buildTextField(
                controller: emailController,
                label: 'Email',
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Введите email';
                  }
                  if (!RegExp(r'^[\w-]+@([\w-]+\.)+[\w-]+$').hasMatch(value)) {
                    return 'Неверный формат email';
                  }
                  return null;
                },
              ),
              buildTextField(
                controller: loginController,
                label: 'Логин',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Введите логин';
                  }
                  if (value.length < 3) {
                    return 'Логин должен быть не менее 3 символов';
                  }
                  return null;
                },
              ),
              buildTextField(
                controller: passwordController,
                label: 'Пароль',
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Введите пароль';
                  }
                  if (value.length < 6) {
                    return 'Пароль должен быть не менее 6 символов';
                  }
                  return null;
                },
              ),
              buildTextField(
                controller: confirmPasswordController,
                label: 'Повторите пароль',
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Введите пароль';
                  }
                  if (value.length < 6) {
                    return 'Пароль должен быть не менее 6 символов';
                  }
                  if (value != passwordController.text) {
                    return 'Пароли не совпадают';
                  }
                  return null;
                },
              ),
              SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: submitform,
                  child: Text('Зарегистрироваться'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTextField({
    required TextEditingController controller,
    required String label,
    String? hint,
    bool obscureText = false,
    TextInputType keyboardType = TextInputType.text,
    String? Function(String?)? validator,
  }) {
    return Padding(
      padding: EdgeInsets.only(bottom: 16),
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          labelText: label,
          hintText: hint,
          border: OutlineInputBorder(),
        ),
        validator: validator,
      ),
    );
  }
}
