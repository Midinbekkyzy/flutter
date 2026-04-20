import 'package:flutter/material.dart';

void main() => runApp(FeedbackPage());

class FeedbackPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Обратная связь')),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // 1. Stateless часть: Заголовок и описание (не меняются)
              Text(
                'Напишите нам',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text('Введите ваше имя и нажмите кнопку отправки.'),
              SizedBox(height: 18),

              // 2. Stateful часть: Форма (реагирует на действия)
              FeedbackForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class FeedbackForm extends StatefulWidget {
  @override
  _FeedbackFormState createState() => _FeedbackFormState();
}

class _FeedbackFormState extends State<FeedbackForm> {
  // Переменные состояния из подсказок
  String name = "";
  bool isSent = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // Поле ввода имени
        TextField(
          decoration: InputDecoration(
            labelText: 'Ваше имя',
            border: OutlineInputBorder(),
          ),
          onChanged: (value) {
            name = value; // Сохраняем текст
          },
        ),
        SizedBox(height: 10),

        Center(
          child: SizedBox(
            width: 180,
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  isSent = true;
                });
              },
              child: Text('Отправить'),
            ),
          ),
        ),

        SizedBox(height: 18),

        // Условие: показываем текст только после нажатия
        if (isSent)
          Text(
            'Отправлено! Спасибо, $name',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: Colors.green, // Доп. задание по цвету
              fontWeight: FontWeight.bold,
            ),
          ),
      ],
    );
  }
}
