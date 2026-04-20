import 'package:flutter/material.dart';
import 'package:flutter_application_1/lesson2/productCard.dart';

class ProductApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('Товары'), backgroundColor: Colors.amber),
        body: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: ProductCard(
                        image: 'images/nike.jpeg',
                        title: 'Nike Air Max',
                        price: '\$150',
                        rating: 3,
                        category: 'Shoes',
                        sale: true,
                      ),
                    ),
                    SizedBox(width: 8),

                    Expanded(
                      child: ProductCard(
                        image: 'images/bag.jpeg',
                        title: 'Leather Bag',
                        price: '\$550',
                        rating: 4,
                        category: 'Bags',
                      ),
                    ),
                    SizedBox(width: 12),
                  ],
                ),
              ),
              SizedBox(height: 20),

              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: ProductCard(
                        image: 'images/headphones.jpeg',
                        title: 'Headphones',
                        price: '\$200',
                        rating: 5,
                        category: 'Audio',
                      ),
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: ProductCard(
                        image: 'images/watch.jpeg',
                        title: 'Smart watch',
                        price: '\$300',
                        rating: 4,
                        category: 'Gadgets',
                        sale: true,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
