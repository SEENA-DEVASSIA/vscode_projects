import 'package:flutter/material.dart';

void main() {
  runApp(const TabBarDemo());
}

class TabBarDemo extends StatelessWidget {
  const TabBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose(); // Correct disposal
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Demo TabBar')),
        backgroundColor: Colors.blueGrey,
        foregroundColor: Colors.white,
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(icon: Icon(Icons.home), text: 'Home'),
            Tab(icon: Icon(Icons.search), text: 'Search'),
            Tab(icon: Icon(Icons.person), text: 'Profile'),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Center(
                        child:
                            Text('Home Page', style: TextStyle(fontSize: 18))),
                    const SizedBox(height: 30),
                    OutlinedButton(
                      onPressed: () {},
                      child: const Text('View Gallery'),
                    ),
                  ],
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: TextField(
                      maxLength: 20,
                      decoration: InputDecoration(
                        hintText: 'Search',
                        prefixIcon: const Icon(Icons.search),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(21)),
                      ),
                    ),
                  ),
                ),
                 Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        width: 100,
                        height: 100,
                        child: Icon(
                          Icons.person_2_rounded,
                          size: 75,
                        ),
                      ),
                      const SizedBox(height: 20),
                    OutlinedButton(
                      onPressed: () {},
                      child: const Text('View Profile'),
                    ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}