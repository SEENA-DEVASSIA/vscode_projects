import 'package:flutter/material.dart';

class DogDetails extends StatelessWidget {

  final String? breed;
  final String? info;

  const DogDetails({super.key, required this.breed, required this.info});
  String getImagePath() {
    switch(breed.toString()) {
      case 'Bulldog':
      return 'assets/images/bulldog.jpg';
      case 'Chow Chow':
      return 'assets/images/chow_chow.jpg';
      case 'Doberman':
      return 'assets/images/doberman.jpg';
      case 'Husky':
      return 'assets/images/husky.jpg';
      case 'Pug':
      return 'assets/images/pug.jpg';
      default:
      return 'assets/images/no_dog.jpg';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(breed.toString()),
        backgroundColor: Colors.blueGrey,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 10,),
            const Text('Dog', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.black54),),

            const Padding(
              padding: EdgeInsets.all(10),
              child: Divider(color: Colors.green, thickness: 2, height: 12,),
            ),

            const SizedBox(height: 30,),
            Text(breed.toString(), style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.redAccent),),
            const SizedBox(height: 30,),
            ClipOval(child: Image.asset(getImagePath(),height: 300, width: 300, fit: BoxFit.cover,)),
            const SizedBox(height: 30,),
          
            Expanded(
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 10),
                  child: Text('About : ${info.toString()}', style: const TextStyle(fontSize: 20),),
                ),
              ),
            ),
            const SizedBox(height: 30,),
          ],
        ),
      ),
    ); 
  }
}