import 'package:flutter/material.dart';
import 'package:job_feedback/second_screen.dart';

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
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  bool _checkBoxValue = false;
  String _radioValue = 'Option 1';
  bool _switchValue = false;
  final TextEditingController _textEditingController = TextEditingController();

  void _submitData() {
    Navigator.push(context,
    MaterialPageRoute(builder: (context) => DisplaydataScreen(
      text: _textEditingController.text,
      isCheckd: _checkBoxValue, 
      radioValue: _radioValue, 
      switchValue: _switchValue))
    );
  }


  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Job Feedback'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
       
        
      ),
      body: Center(
        
        child: Column(
          
          //mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: _textEditingController,
                decoration: InputDecoration(
                  labelText: 'Enter your name',
                ),
              ),
            ),
            const SizedBox(height: 30,),

            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Checkbox(
                    value: _checkBoxValue, 
                    onChanged: (value) {
                      setState(() {
                        _checkBoxValue = value!;
                      });
                    }),
                ),
                Text('Completed a Degree')
              ],
            ),

            const SizedBox(height: 30,),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Radio(
                    value: 'First', 
                    groupValue: _radioValue, 
                    onChanged: (value) {
                      setState(() {
                        _radioValue = value.toString();
                      });
                    },),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text('First Class'),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Radio(
                    value: 'Second', 
                    groupValue: _radioValue, 
                    onChanged: (value) {
                      setState(() {
                          _radioValue = value.toString();
                        });
                    },
                    ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text('Second Class'),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Radio(
                    value: 'Third', 
                    groupValue: _radioValue, 
                    onChanged: (value) {
                      setState(() {
                          _radioValue = value.toString();
                        });
                    },
                    ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text('Third Class'),
                )

              ],
            ),
            const SizedBox(height: 30,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Switch(
                    value: _switchValue, 
                    onChanged: (value) {
                      setState(() {
                        _switchValue = value;
                      });
                    }),
                ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text('Ready to join ?'),
                  ),
              ],
            ),
            const SizedBox(height: 30,),

            Padding(
              padding: const EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: _submitData, 
                child: Text('Submit'),),
            ),
            
          ],
        ),
      ),
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  
}
