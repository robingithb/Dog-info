import 'package:dog_info/dog_details.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Dog Info"),
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
          foregroundColor: Colors.white,
        ),
        body: DogList(),
      ),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        useMaterial3: true,
      ),
    );
  }
}

class DogList extends StatelessWidget {
  DogList({super.key});
  final List<String> dogBreads = [
    "Bull dog",
    "Golden retreiver",
    "Blacky",
    "Puppy",
  ];

  final Map<String, String> dogInfo = {
    "Bull dog":
        "The Bulldog is a British breed of dog of mastiff type. It may also be known as the English Bulldog or British Bulldog. It is a medium-sized, muscular dog of around 40-55 lb.",
    "Golden retreiver":
        "The Golden Retriever is a Scottish breed of retriever dog of medium size. It is characterised by a gentle and affectionate nature and a striking golden coat.",
    "Blacky":
        "Black dog breeds evoke many different impressions upon first glance: many look regal and sophisticated, some have a hint of mystery, while others look daring or intimidating",
    "Puppy":
        "Puppies are not able to see as well as adult dogs. In addition, puppies' ears remain sealed until about thirteen to seventeen days after birth, after which they respond more actively to sounds.\nPuppies are not able to see as well as adult dogs. In addition, puppies' ears remain sealed until about thirteen to seventeen days after birth, after which they respond more actively to sounds\n Puppies are not able to see as well as adult dogs. In addition, puppies' ears remain sealed until about thirteen to seventeen days after birth, after which they respond more actively to sounds\n Puppies are not able to see as well as adult dogs. In addition, puppies' ears remain sealed until about thirteen to seventeen days after birth, after which they respond more actively to sounds"
  };

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: dogBreads.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(dogBreads[index]),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DogDetailsScreen(
                    breed: dogBreads[index],
                    info:
                        dogInfo[dogBreads[index]] ?? "No information available",
                  ),
                ),
              );
            },
          );
        });
  }
}
