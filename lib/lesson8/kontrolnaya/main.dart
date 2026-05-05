import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: CatalogPage(), debugShowCheckedModeBanner: false);
  }
}

class CatalogPage extends StatelessWidget {
  CatalogPage({super.key});

  @override
  Widget build(BuildContext context) {
    final items = List.generate(
      10,
      (index) => {
        'title': "Item ${index + 1}",
        'description': 'Описание элемента ${index + 1}',
      },
    );
    return Scaffold(
      appBar: AppBar(title: Text('Каталог'), centerTitle: true),
      body: ListView.builder(
        padding: EdgeInsets.all(10),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.symmetric(vertical: 6),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(12),
            ),
            child: ListTile(
              leading: Icon(Icons.menu),
              title: Text(items[index]['title']!),
              subtitle: Text(items[index]['description']!),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder:
                        (_) => DetailPage(
                          title: items[index]['title']!,
                          description: items[index]['description']!,
                        ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

class DetailPage extends StatefulWidget {
  final String title;
  final String description;

  DetailPage({super.key, required this.title, required this.description});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title), centerTitle: true),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.title,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(widget.description),
            SizedBox(height: 20),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () {
                  setState(() {
                    isFavorite = !isFavorite;
                  });
                },
                icon: Icon(
                  Icons.favorite,
                  color: isFavorite ? Colors.white : Colors.purple,
                ),
                label: Text(
                  isFavorite ? 'Убрать из избранного' : 'Добавить в избранное',
                  style: TextStyle(
                    color: isFavorite ? Colors.white : Colors.purple,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: isFavorite ? Colors.green : Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 14),
                ),
              ),
            ),
            SizedBox(height: 10),

            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Назад'),
            ),
          ],
        ),
      ),
    );
  }
}
