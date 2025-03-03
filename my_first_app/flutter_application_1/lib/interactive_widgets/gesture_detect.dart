import 'package:flutter/material.dart';

void main() {
  runApp(const GestureExample());
}

class GestureExample extends StatelessWidget {
  const GestureExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(appBar: AppBar(title: const Text('Gesture Demo'),),
      body: Center(
        
        child: Column(
          
          children: [
            OutlinedButton(
          onPressed: () {
            print('hello');
          }, 
          child: const Text('Tap me !')),


          const SizedBox(height: 30,),
          GestureDetector(
            child: Container(
              width: 200,
              height: 200,
              color: Colors.blueAccent,
              child: const Center(
                child: Text('Tap Me !', style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),),
              ),
            ),
            onTap: () {
              print('container tapped');
            },
          ),

          const SizedBox(height: 30,),

          InkWell(
            child: Container(
              width: 300,
              height: 300,
              color: Colors.redAccent,
              child: const Center(
                child: Text('Tap Me !'),
              ),
            ),
            onTap: () {
              print('Hi');
            }
          )

          ],
        ),
      ),
      ),
    );
  }
}