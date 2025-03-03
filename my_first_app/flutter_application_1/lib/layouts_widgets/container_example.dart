import 'package:flutter/material.dart';

void main() {
  runApp(const ContainerWidget());
}

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          foregroundColor: Colors.white,
          title: const Center(child: Text('Container',style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold,),)),
        ),
        body: Row(

          //mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [

            Container(
              margin: const EdgeInsets.all(8),
              width: 300,
              height: 300,
              color: Colors.amber[600],
              child: const Text('Hello'),
              padding: const EdgeInsets.all(8),
            ),

            Container(
              margin: const EdgeInsets.all(8),
              width: 200,
              height: 200,
              color: Colors.blueAccent,
              child: const Text('Hello'),
              padding: const EdgeInsets.all(8),
            ),

            Container(
              margin: const EdgeInsets.all(8),
              width: 100,
              height: 100,
              color: Colors.cyanAccent,
              child: const Text('Hello'),
              padding: const EdgeInsets.all(8),
            ),



          ],
        ),
      ),
    );
  }
}
