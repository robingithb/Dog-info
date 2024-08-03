import 'package:dog_info/dog_info.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const DogInfoApp());
}

class DogInfoApp extends StatelessWidget {
  const DogInfoApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SplashScreenWidget(),
    );
  }
}

class SplashScreenWidget extends StatefulWidget {
  const SplashScreenWidget({super.key});

  @override
  State<SplashScreenWidget> createState() => _SplashScreenWidgetState();
}

class _SplashScreenWidgetState extends State<SplashScreenWidget> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 6), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const Home()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipOval(
              child: Image.asset(
                "/home/robin/flutter_intern/dog_info/assets/images/puppy.jpg",
                height: 250,
                width: 250,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Dog Info",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w300,
                  color: Colors.white,
                  fontFamily: 'RobotoMono'),
            ),
            const SizedBox(
              height: 20,
            ),
            const CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation(
              Colors.white,
            ))
          ],
        ),
      ),
    );
  }
}
