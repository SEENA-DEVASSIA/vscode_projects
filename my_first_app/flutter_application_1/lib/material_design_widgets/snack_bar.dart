import 'package:flutter/material.dart';

void main() {
  runApp(const SnackBarDemo());
}

class SnackBarDemo extends StatelessWidget {
  const SnackBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SnackBarExample(),
    );
  }
}

class SnackBarExample extends StatefulWidget {
  const SnackBarExample({super.key});

  @override
  State<SnackBarExample> createState() => _SnackBarExampleState();
}

class _SnackBarExampleState extends State<SnackBarExample> {

  String? _displayText = '';

  void _showSnackBar() {
    final snackBar = SnackBar(
      content: const Text('This is a Snack Bar !'),
      duration: const Duration(seconds: 6),
      action: SnackBarAction(
          label: 'Undo',
          onPressed: () {
            setState(() {
              _displayText = 'Undo butto clicked';
            });
          }),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('SNACKBAR'),),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(onPressed: _showSnackBar, child: const Text('show snack bar')),
            const SizedBox(height: 30,),
          ],
        ),
      ),
    );
  }
}