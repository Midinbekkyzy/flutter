import 'package:flutter/material.dart';

class CallPage extends StatelessWidget {
  const CallPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> calls = [
      {"name": "Мама", "date": "Сегодня", "char": "М", "income": true},
      {"name": "Папазавр", "date": "Вчера", "char": "А", "income": false},
      {"name": "яработа", "date": "20 мая", "char": "М", "income": true},
    ];

    final List<Color> avatarColors = [
      const Color(0xFF7CB3F3),
      const Color(0xFF95CCF4),
      const Color.fromARGB(255, 238, 9, 9),
    ];

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        // backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text('Звонки'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: calls.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(bottom: 1),
            //color: Colors.white,
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 4,
              ),
              leading: CircleAvatar(
                radius: 22,
                backgroundColor: avatarColors[index % avatarColors.length],
                child: Text(
                  calls[index]['char'],
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              title: Text(
                calls[index]['name'],
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 17,
                ),
              ),
              subtitle: Text(
                calls[index]['date'],
                style: const TextStyle(color: Colors.grey),
              ),
              trailing: Icon(
                calls[index]['income'] ? Icons.call_received : Icons.call_made,
                color: Colors.green,
                size: 20,
              ),
            ),
          );
        },
      ),
    );
  }
}
