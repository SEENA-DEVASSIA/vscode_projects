import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drawer Navigation'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage("assets/images/profile_icon.png"),
                  ),
                  SizedBox(height: 10),
                  Text("Seena", style: TextStyle(fontSize: 18, color: Colors.white)),
                  SizedBox(height: 5),
                  Text("Graphic Designer", style: TextStyle(fontSize: 14, color: Colors.white70)),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.favorite, color: Colors.white, size: 18),
                      SizedBox(width: 10),
                      Icon(Icons.star, color: Colors.white, size: 18),
                      SizedBox(width: 10),
                      Icon(Icons.thumb_up, color: Colors.white, size: 18),
                    ],
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.feed, color: Colors.blue),
              title: const Text('Feed', style: TextStyle(color: Colors.blue)),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.event),
              title: const Text('Events'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.camera_alt),
              title: const Text('Post'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.notifications),
              title: const Text('Notifications'),
              trailing: const CircleAvatar(
                backgroundColor: Colors.blue,
                radius: 10,
                child: Text('3', style: TextStyle(fontSize: 12, color: Colors.white)),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.account_circle),
              title: const Text('Account'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Logout'),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text('Home Screen'),
      ),
    );
  }
}