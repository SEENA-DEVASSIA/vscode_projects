import 'package:flutter/material.dart';

void main() {
  runApp(const CardExample());
}

class CardExample extends StatelessWidget {
  const CardExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,

      home: Scaffold(appBar: AppBar(title: const Center(child: Text('Card Example')),),
      body: Center(
        child: Card(
          elevation: 6,
          shadowColor: Colors.grey,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            ),
            child: Container(
              padding: const EdgeInsets.all(16),
              width: 350,
              height: 250,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Flutter Card', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20,),
                  Text('This is a card example in flutter',textAlign: TextAlign.center,),
                ],
              ),
            ),
        ),
      ),
      ),
    );
  }
}