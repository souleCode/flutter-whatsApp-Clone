import 'package:flutter/material.dart';
import 'package:application1/pages/home.dart';

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
      title: 'Gmail UI',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 192, 55, 55),
        ),
      ),
      home: const MyHomePage(title: 'Gmail UI'),
    );
  }
}
