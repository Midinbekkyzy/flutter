import 'package:flutter/material.dart';
import 'package:flutter_application_1/lesson6/callPage.dart';
import 'package:flutter_application_1/lesson6/contactPage.dart';
import 'package:flutter_application_1/lesson6/help.dart';
import 'package:flutter_application_1/lesson6/settingsPage.dart';

class AppDrawer extends StatelessWidget {
  final Function(bool) onThemeChanged;
  final ThemeMode themeMode;

  const AppDrawer({
    super.key,
    required this.onThemeChanged,
    required this.themeMode,
  });

  @override
  Widget build(BuildContext context) {
    final telegramBlue = Color.fromARGB(255, 102, 188, 234);
    return Drawer(
      child: ListView(
        padding: EdgeInsets.all(0),
        children: [
          Container(
            height: 170,
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(color: telegramBlue),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.white,
                  child: Icon(Icons.person, size: 40, color: Color(0xFF2AABEE)),
                ),
                SizedBox(height: 12),
                Text(
                  'Пользователь',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '+996 221 48 45 74',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
          drawerItem(
            context,
            icon: Icons.chat,
            title: 'Чаты',
            onTap: () => Navigator.pop(context),
          ),
          drawerItem(
            context,
            icon: Icons.call,
            title: 'Звонки',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => CallPage()),
              );
            },
          ),
          drawerItem(
            context,
            icon: Icons.person_2,
            title: 'Контакты',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => ContactPage()),
              );
            },
          ),
          Divider(),
          drawerItem(
            context,
            icon: Icons.settings,
            title: 'Настройки',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => SettingsPage()),
              );
            },
          ),

          drawerItem(
            context,
            icon: Icons.help_outline,
            title: 'Помощь',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => HelpPage()),
              );
            },
          ),

          Divider(),
          SwitchListTile(
            secondary: Icon(Icons.dark_mode),
            title: Text('Ночной режим'),
            value: themeMode == ThemeMode.dark,
            onChanged: (bool value) {
              onThemeChanged(value);
            },
          ),
        ],
      ),
    );
  }

  Widget drawerItem(
    BuildContext context, {
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return ListTile(leading: Icon(icon), title: Text(title), onTap: onTap);
  }
}
