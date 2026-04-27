import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Настройки")),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text("Уведомления"),
          ),
          ListTile(
            leading: Icon(Icons.privacy_tip),
            title: Text("Конфиденциальность"),
          ),
        ],
      ),
    );
  }
}
