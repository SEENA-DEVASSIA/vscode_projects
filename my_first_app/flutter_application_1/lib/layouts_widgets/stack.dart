import 'package:flutter/material.dart';

void main() {
  runApp(const StackWidget());
}

class StackWidget extends StatelessWidget {
  const StackWidget ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,

      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellowAccent,
          foregroundColor: Colors.black,
          title: const Text('STACK', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),),
        ),
        body: Center(
          child: Stack(

            alignment: Alignment.center,

            children: [

              Container(
                width: 300,
                height: 300,
                color: Colors.red,
              ),

              Container(
                width: 200,
                height: 200,
                color: Colors.yellowAccent,
              ),

              Container(
                width: 100,
                height: 100,
                color: Colors.orange,
              ),

              FlutterLogo(),
              
            ],
          ),
        ),
      ),
    );
  }
}
