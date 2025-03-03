import 'package:flutter/material.dart';

void main() {}

class DisplaydataScreen extends StatelessWidget {

  final String? text;
  final bool isCheckd;
  final String radioValue;
  final bool switchValue;
  
  const DisplaydataScreen({
    super.key, this.text, 
    required this.isCheckd, 
    required this.radioValue, 
    required this.switchValue});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Data'),),
      body: Padding(padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Text('Name: $text'),
          const SizedBox(height: 30,),
          Text('Degree Status: ${isCheckd ? 'Yes' : 'No'}'),
          const SizedBox(height: 30,),
          Text('Rank Status : $radioValue'),
          const SizedBox(height: 30,),
          Text('Ready to Join : ${switchValue ? 'Yes' : 'No'}'),
          const SizedBox(height: 30,),

        ],
      ),),
    );
  }
}