import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'login2_screen.dart';
import 'home2_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 185, 156, 235)),
      ),
      home: Login2Screen(),
    );
  }
}

