import 'package:flutter/material.dart';

void main() {
  runApp(const AlignWidget());
}

class AlignWidget extends StatelessWidget {
  const AlignWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,

      home: Scaffold(appBar: AppBar(title: const Center(child: Text('Alignment Widget')),),
      body: Center(

        child: Container(
          color: Colors.yellow[200],
          height: 300,
          width: 300,
          child: const Align(

            alignment: Alignment.topLeft,

            child: FlutterLogo(size:100,)),
        ),
      ),),
    );
  }
}