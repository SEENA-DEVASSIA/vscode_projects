import 'package:flutter/material.dart';

void main() {
  runApp(const NavExample());
}

class NavExample extends StatelessWidget {
  const NavExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String _content = 'home page';
  final List<String> _itemList = ['iPhone 15','pixel 8 pro','Samsumg'];

  void _updeateContent(String newContent) {
    setState(() {
      _content = newContent;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Drawer Example'),),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ), 
              child: Text('products', style: TextStyle(color: Colors.white, fontSize: 24),),
            ),
            ListTile(
              title: const Text('Mobiles'),
              onTap: () {
                _updeateContent('Mobiles');
                Navigator.pop(context);
              },
            ),

            ListTile(
              title: const Text('Computers'),
              onTap: () {
                _updeateContent('Computers');
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    if (_content == 'Mobiles') {
      return ListView.builder(
        itemCount: _itemList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(_itemList[index]),
          );
        },);
    }
    else if(_content =='Computers') {
      return const Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.star),
            SizedBox(width: 20,),
            Text('Apple'),
            SizedBox(width: 20,),
            Icon(Icons.favorite),
            SizedBox(width: 20,),
            Text('Chrome Book'),
          ],),
      );
      
    }
    else {
      return Center(
        child: Text(_content),
      );
    }
  }


}