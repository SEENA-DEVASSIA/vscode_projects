import 'package:flutter/material.dart';

void main() {
  runApp(const SliderDemo());
}

class SliderDemo extends StatelessWidget {
  const SliderDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SliderAlertDialog(),
    );
  }
}

class SliderAlertDialog extends StatefulWidget {
  const SliderAlertDialog({super.key});

  @override
  State<SliderAlertDialog> createState() => _SliderAlertDialogState();
}

class _SliderAlertDialogState extends State<SliderAlertDialog> {
  double _sliderValue = 0.0; // Changed from double? to double

  void _showValueDialog(double value) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog( // Changed AboutDialog to AlertDialog
          title: const Text('Slider value'),
          content: Text('The current value is $value'),
          actions: [
            OutlinedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Slider Demo')),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min, // Added to center the column
          children: [
            const Text('Scroll the Slider'),
            Slider(
              value: _sliderValue,
              onChanged: (newValue) {
                setState(() {
                  _sliderValue = newValue;
                  _showValueDialog(newValue);
                });
              },
              min: 0,
              max: 100,
              divisions: 5,
            ),
            ElevatedButton(
              onPressed: () {
                _showValueDialog(_sliderValue);
              },
              child: const Text('Show value'),
            ),
          ],
        ),
      ),
    );
  }
}