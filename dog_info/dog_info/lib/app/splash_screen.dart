import 'package:dog_info/app/dog_info.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const DogInfoApp());
}

class DogInfoApp extends StatelessWidget {
  const DogInfoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),);
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override

  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 6), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const HomePage()));
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 243, 243, 141),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipOval(
              child: Image.asset('assets/images/chow_chow.jpg',
              width: 100, height: 100,
              fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 30,),
            const Text('Dog Info App', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.cyan),),
            const SizedBox(height: 30,),
            const CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            )
          ],
        ),
      ),
    );
  }
  
}