import 'package:dog_info/app/dog_details.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blueGrey,
          foregroundColor: Colors.white,
          title: const Text('Dog Info'),
          automaticallyImplyLeading: true,
        ),

        body: DogList(),
      ),
    );
  }
}

class DogList extends StatelessWidget {
  DogList({super.key});

  final List<String> dogBreeds = [
    "Bulldog",
    "Doberman",
    "Husky",
    "Pug",
    "Chow Chow"
  ];

  final Map<String, String> dogInfo = {
    "Bulldog":
        "* The Bulldog is a British breed of dog of mastiff type. It may also be known as the English Bulldog or British Bulldog. It is a medium-sized, muscular dog of around 40–55 lb. They have large heads with thick folds of skin around the face and shoulders and a relatively flat face with a protruding lower jaw. \n* The Bulldog is a British breed of dog of mastiff type. It may also be known as the English Bulldog or British Bulldog. It is a medium-sized, muscular dog. \n* The breed has significant health issues as a consequence of breeding for its distinctive appearance, including brachycephaly, hip dysplasia, heat sensitivity, and skin infections. Due to concerns about their quality of life, breeding Bulldogs is illegal in Norway and the Netherlands.",
    "Chow Chow":
        "The Chow Chow is a spitz-type of dog breed originally from Northern China. The Chow Chow is a sturdily built dog, square in profile, with a broad skull and small, triangular, erect ears with rounded tips. The breed is known for a very dense double coat that is either smooth or rough.",
    "Doberman":
        "The Dobermann is a German breed of medium-large working dog of pinscher type. It was originally bred in Thuringia in about 1890 by Louis Dobermann, a tax collector. It has a long muzzle and – ideally – an even and graceful gait.",
    "Husky":
        "The Siberian Husky is a breed of medium-sized working sled dog. The breed belongs to the Spitz genetic family. It is recognizable by its thickly furred double coat, erect triangular ears, and distinctive markings, and is smaller than the similar-looking Alaskan Malamute.",
    "Pug":
        "The Pug is a breed of dog with the physically distinctive features of a wrinkly, short-muzzled face, and curled tail.",
  };

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dogBreeds.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(dogBreeds[index]),
          onTap: () {
            Navigator.push(context,MaterialPageRoute(
                builder: (context) => DogDetails(
                  breed: dogBreeds[index],info: dogInfo[dogBreeds[index]] ?? 'No Information Available'),

              )
            );
          },
        );
      },
    );
  }
}
