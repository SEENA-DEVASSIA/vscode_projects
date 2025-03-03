import 'package:flutter/material.dart';

void main() {
  runApp(const ChipExample());
}

class ChipExample extends StatelessWidget {
  const ChipExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(appBar: AppBar(title: Center(child: const Text('Chip Example')),),
      body: const Center(
        child: Chip(label: Text('Flutter Chip', style: TextStyle(color: Colors.redAccent),),
        backgroundColor: Colors.amberAccent,
        elevation: 4,
        shadowColor: Colors.grey,
        padding: EdgeInsets.all(10),
        ),
      ),
      ),
      
    );
  }
}