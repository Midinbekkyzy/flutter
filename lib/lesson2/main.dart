import 'package:flutter/material.dart';
import 'package:flutter_application_1/lesson2/productApp.dart';

void main() => runApp(ProductApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(Object context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Image.asset('images/shoes.jpeg'),
            Positioned(
              top: 10,
              right: 10,

              child: Text(
                'SALE 30%',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
