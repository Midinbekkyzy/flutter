import 'package:flutter/material.dart';
import 'package:flutter_application_1/lesson5/successPage.dart';

class OrderPage extends StatelessWidget {
  final String productTitle;

  OrderPage({required this.productTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(' Заказ и оплата ')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Ваш заказ: ',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(productTitle),
            SizedBox(height: 20),
            Text(
              'Способ оплаты:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            ListTile(
              leading: Icon(Icons.account_balance_wallet),
              title: Text('Электронный кошелек'),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (_) => SuccessPage(productTitle: productTitle),
                    ),
                  );
                },

                child: Text('Оплатить'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
