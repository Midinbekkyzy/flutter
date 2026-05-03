import 'package:flutter/material.dart';

class TelegramBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Telegram Bottom Sheet',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blue,
        scaffoldBackgroundColor: Colors.blueGrey,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});

  void showTelegramBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),

      isDismissible: true,
      builder: (context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 12),
            Container(
              width: 40,
              height: 4,
              decoration: BoxDecoration(
                color: Colors.grey[400],
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            SizedBox(height: 16),
            bottomItem(context, icon: Icons.lock, text: 'Новый закрытый чат'),
            bottomItem(context, icon: Icons.group, text: 'Новая группа'),
          ],
        );
      },
    );
  }

  Widget bottomItem(
    BuildContext context, {
    required IconData icon,
    required String text,
  }) {
    return ListTile(
      leading: Icon(icon, size: 25),
      title: Text(text, style: TextStyle(fontSize: 16)),
      onTap: () {
        Navigator.pop(context);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('$text выбрано'),
            duration: Duration(seconds: 3),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Telegram')),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showTelegramBottomSheet(context),
        child: Icon(Icons.add),
      ),
      body: Center(child: Text('Список чатов', style: TextStyle(fontSize: 24))),
    );
  }
}
