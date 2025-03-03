import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CounterApp(),
    );
  }
}

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {

  int _counter = 0;

  void _incrementCounter() {

    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            const Text('Counter : '),
            Text('$_counter ', style: const TextStyle(fontSize: 35,fontWeight: FontWeight.bold),)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: _incrementCounter,
      tooltip: 'Increment',
      child: const Icon(Icons.add),
      ),
    
    );
  }
}