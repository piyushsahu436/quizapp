


import 'package:flutter/material.dart';
import 'package:quiz/firebase_options.dart';
import 'package:quiz/homepage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:quiz/spalshscreen.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());}


class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',

      home:Splashscreen(),
    );
  }
}