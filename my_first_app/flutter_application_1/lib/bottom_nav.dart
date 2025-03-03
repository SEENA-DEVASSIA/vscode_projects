import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    const HomePage(),
    const SearchPage(),
    const ProfilePage(), // Added ProfilePage
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue), // Added theme
      home: Scaffold(
        appBar: AppBar(title: const Text('Bottom Navigation')),
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.blueAccent,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}

// Home Page
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Home Page',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Image.network(
            'https://cdn.pixabay.com/photo/2017/03/17/13/05/bank-2151496_960_720.png',
            width: 200,
            height: 200,
          ),
        ],
      ),
    );
  }
}

// Search Page
class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Search Page',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Image.network(
            'https://cdn.pixabay.com/photo/2017/04/01/03/02/seo-2192823_1280.png',
            width: 200,
            height: 200,
          ),
        ],
      ),
    );
  }
}

// Profile Page
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Profile Page',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }
}