
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:quiz/homepage.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() =>_SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    navigatehome();
  }

  navigatehome() async{
    await Future.delayed(Duration(seconds:5), (){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Homepage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 5, 50, 80),

      body: Container(
        child: Align(
          alignment: Alignment.center,
          child: AnimatedTextKit(
            repeatForever: false,
            isRepeatingAnimation: true,
            animatedTexts:[ WavyAnimatedText("Leeza".toUpperCase(),

              textStyle: TextStyle(
                fontSize: 42.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            ],
          ),
        ),
      ),
    );
  }
}
