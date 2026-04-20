import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String image;
  final String title;
  final String price;
  final bool sale;
  final int rating;
  final String category;

  ProductCard({
    required this.image,
    required this.title,
    required this.price,
    required this.rating,
    required this.category,
    this.sale = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 8),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 212, 210, 177),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 6, offset: Offset(0, 3)),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  image,
                  height: 100,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  errorBuilder:
                      (context, error, StackTrace) => Container(
                        height: 100,
                        color: Colors.red,
                        child: Center(child: Text('Нет картинки')),
                      ),
                ),
              ),
              if (sale)
                Positioned(
                  top: 8,
                  left: 8,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      'SALE',
                      style: TextStyle(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
            ],
          ),
          SizedBox(height: 5),

          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),

              Text(
                price,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.green,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          SizedBox(height: 5),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(rating, (index) {
              return const Icon(Icons.star, size: 16, color: Colors.amber);
            }),
          ),
          SizedBox(height: 5),

          Align(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(onPressed: () {}, child: Text('Купить')),
            ),
          ),
          SizedBox(height: 5),
          Align(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: OutlinedButton(
                onPressed: () {},
                child: Text('В избранное'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
