import 'package:flutter/material.dart';

class DogDetailsScreen extends StatelessWidget {
  final String? breed;
  final String? info;
  const DogDetailsScreen({super.key, required this.breed, required this.info});

  String getImagepath() {
    switch (breed.toString()) {
      case ("Bull dog"):
        return "/home/robin/flutter_intern/dog_info/assets/images/bulldog.jpg";

      case ("Golden retreiver"):
        return "/home/robin/flutter_intern/dog_info/assets/images/dog1.jpg";

      case ("Blacky"):
        return "/home/robin/flutter_intern/dog_info/assets/images/dog2.jpg";

      case ("Puppy"):
        return "/home/robin/flutter_intern/dog_info/assets/images/puppy.jpg";

      default:
        return ("/home/robin/flutter_intern/dog_info/assets/images/no_dogs.png");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(breed.toString()),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
        automaticallyImplyLeading: true,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                "Dog",
                style: TextStyle(fontSize: 18),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Divider(
                height: 10,
                thickness: 5,
                color: Colors.red,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              breed.toString(),
              style: (const TextStyle(
                  fontSize: 20,
                  color: Colors.red,
                  fontWeight: FontWeight.bold)),
            ),
            const SizedBox(
              height: 30,
            ),
            ClipOval(
              child: Image.asset(
                getImagepath(),
                height: 200,
                width: 200,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    'About :$info'.toString(),
                    style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.italic,
                        fontSize: 20),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
