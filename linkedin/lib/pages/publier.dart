import 'package:flutter/material.dart';
import 'package:linkedin/pages/pubAppbar.dart';

class PublishScreen extends StatefulWidget {
  const PublishScreen({super.key});

  @override
  State<PublishScreen> createState() => _PublishScreenState();
}

class _PublishScreenState extends State<PublishScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PubAppBar(),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
          maxLines: null,
          decoration: InputDecoration(
            hintText: "De quoi souhaitez-vous discuter ?",
            border: InputBorder.none,
            hintStyle: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
            
          ),
        ),
      ),
    );
  }
}
