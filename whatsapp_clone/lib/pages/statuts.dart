import 'package:flutter/material.dart';

class ActusScreen extends StatefulWidget {
  const ActusScreen({super.key});

  @override
  State<ActusScreen> createState() => _ActusScreenState();
}

class _ActusScreenState extends State<ActusScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text(
          'Actus',
          style: TextStyle(
            color: Colors.green,
            fontWeight: FontWeight.bold,
            fontSize: 28,
          ),
        ),
      ),
      body: const Placeholder(),
    );
  }
}
