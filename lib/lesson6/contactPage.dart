import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> contacts = [
      {"name": "Алексей", "char": "А"},
      {"name": "Мария", "char": "М"},
      {"name": "Данияр", "char": "Д"},
      {"name": "Айдана", "char": "А"},
      {"name": "Flutter Teacher", "char": "F"},
    ];

    final List<Color> avatarColors = [
      Colors.blue.shade300,
      Colors.orange.shade300,
      Colors.green.shade300,
      Colors.pink.shade300,
      Colors.purple.shade300,
    ];

    return Scaffold(
      backgroundColor: const Color(0xFFF5F6F8),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text('Контакты', style: TextStyle(color: Colors.black)),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          return Container(
            color: Colors.white,
            child: ListTile(
              leading: CircleAvatar(
                radius: 22,
                backgroundColor: avatarColors[index % avatarColors.length],
                child: Text(
                  contacts[index]['char']!,
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              title: Text(
                contacts[index]['name']!,
                style: const TextStyle(fontWeight: FontWeight.w500),
              ),
              subtitle: const Text(
                'в сети',
                style: TextStyle(color: Colors.blue),
              ),
              onTap: () {},
            ),
          );
        },
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blueAccent,
        child: const Icon(Icons.person_add, color: Colors.white),
      ),
    );
  }
}
