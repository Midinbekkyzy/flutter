import 'package:flutter/material.dart';
import 'package:flutter_application_1/lesson6/appDrawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> chats = [
      {"name": "Sister", "msg": "Hi! Как дела?", "time": "12:30", "char": "А"},
      {
        "name": "Flutter Group",
        "msg": "MdR:0xFF2AABEE",
        "time": "11:15",
        "char": "F",
      },
      {"name": "Мама", "msg": "Ты где?", "time": "10:02", "char": "М"},
      {
        "name": "Telegram",
        "msg": "Обновление приложения",
        "time": "Вчера",
        "char": "Т",
      },
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text('Telegram', style: TextStyle(color: Colors.black)),
        centerTitle: true,
        leading: Builder(
          builder:
              (context) => IconButton(
                icon: const Icon(Icons.menu, color: Colors.black),
                onPressed: () => Scaffold.of(context).openDrawer(),
              ),
        ),
      ),
      drawer: const AppDrawer(),
      body: ListView.separated(
        itemCount: chats.length,
        separatorBuilder: (context, index) => const Divider(height: 1),
        itemBuilder: (context, index) {
          return ListTile(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 4,
            ),
            leading: CircleAvatar(
              radius: 24,
              backgroundColor: const Color(0xFF7CB3F3),
              child: Text(
                chats[index]['char']!,
                style: const TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            title: Text(
              chats[index]['name']!,
              style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
            ),
            subtitle: Text(
              chats[index]['msg']!,
              style: const TextStyle(color: Colors.grey, fontSize: 15),
            ),
            trailing: Text(
              chats[index]['time']!,
              style: const TextStyle(color: Colors.grey),
            ),
          );
        },
      ),
    );
  }
}
