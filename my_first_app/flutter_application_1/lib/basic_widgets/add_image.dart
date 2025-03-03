import 'package:flutter/material.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(appBar: AppBar(title: const Text('Image')),
      body: Center(child: Column(
        children: <Widget>[
          const SizedBox(height: 20,),
          Expanded(child: Image.asset("assets/images/paper_rocket.png", width: 300, height: 200,)),
          const SizedBox(height: 20,),
          Expanded(child: Image.asset("assets/images/rocket2.png", width: 300, height: 200,)),
          const SizedBox(height: 20,),
          Expanded(child: Image.asset("assets/images/paper_rocket.png", width: 300, height: 200,)),
          const SizedBox(height: 20,),
          Expanded(child: Image.asset("assets/images/rocket2.png", width: 300, height: 200,)),
          const SizedBox(height: 20,),
        ],
      ),),
      )
    );
  }
}