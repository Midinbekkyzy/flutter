import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  String name = 'Aynazik Midinbek kyzy';
  String bio = 'People';
  String age = 'I`m 23 ';
  String city = 'I`m from Osh';
  String interests =
      'I am interested in many things, such as reading manhwa and watching videos about space';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        title: Text('Profile'),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('images/cat.jpeg'),
            ),
            SizedBox(height: 16),
            Text(
              name,
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10),
            Text(age, style: TextStyle(fontFamily: 'Roboto', fontSize: 20)),
            SizedBox(height: 10),
            Text(
              city,
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 18,
                color: Colors.teal,
              ),
            ),
            SizedBox(height: 8),
            Text(
              bio,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              interests,
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 14,
                color: Colors.red,
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.camera_alt),
                  iconSize: 30,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.alternate_email),
                  iconSize: 30,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.video_camera_back_outlined),
                  iconSize: 30,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton.icon(onPressed: () {}, label: Text('Follow')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
