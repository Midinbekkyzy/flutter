import 'package:flutter/material.dart';

class SuccessPage extends StatelessWidget {
  final String productTitle;

  // Конструктор для получения названия товара
  SuccessPage({super.key, required this.productTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Скрываем кнопку "назад", так как по логике ДЗ мы не должны возвращаться к оплате
      appBar: AppBar(automaticallyImplyLeading: false),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 2. Иконка (зелёная)
            Icon(Icons.check_circle, color: Colors.green, size: 100),
            SizedBox(height: 20),

            // 2. Текст «Заказ успешно оформлен»
            Text(
              'Заказ успешно оформлен',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),

            // 2. Название заказанного товара
            Text(
              productTitle,
              style: TextStyle(fontSize: 18, color: Colors.grey[700]),
            ),
            SizedBox(height: 40),

            // 4. Кнопка возврата в каталог
            ElevatedButton(
              onPressed: () {
                // Возврат на самый первый экран и очистка стека
                Navigator.popUntil(context, (route) => route.isFirst);
              },
              child: Text('Вернуться в каталог'),
            ),
          ],
        ),
      ),
    );
  }
}
