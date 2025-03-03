import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(title: const Text('Demo App'),),
            body: SafeArea(
              child: Center(
                      child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                ElevatedButton(
                  child: const Text('Hello'),
                  onPressed: () {
                    print('Hello..');
                  },
                ),
                    
                const SizedBox(height: 100,),
                    
                ElevatedButton(
                  child: const Text('Welcome'),
                  onPressed: () {
                    print('Welcome..');
                  },
                ),
                    
                const SizedBox(height: 100,),
                    
                ElevatedButton(
                  child: const Text('Hii'),
                  onPressed: () {
                    print('Hii..');
                  },
                ),
              ],
                      ),
                    ),
            )));
  }
}
