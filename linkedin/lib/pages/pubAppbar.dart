import 'package:flutter/material.dart';
import 'package:linkedin/pages/audience.dart';

class PubAppBar extends StatefulWidget implements PreferredSizeWidget {
  const PubAppBar({super.key});

  @override
  _PubAppBarState createState() => _PubAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _PubAppBarState extends State<PubAppBar> {
  String selectedValue = 'Tout le monde';
  List<String> audienceOptions = [
    'Tout le monde',
    'Amis',
    'Privé',
  ];

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/souley.jpg'),
            radius: 18,
          ),
          SizedBox(width: 10),
          Expanded(
            child: AudienceSelector(),
          ),
          Icon(Icons.access_alarm, color: Colors.black),
          SizedBox(width: 10),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.grey.shade200,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            onPressed: () {
              // Action de publication
              print("Publier : $selectedValue");
            },
            child: Text("Publier", style: TextStyle(color: const Color.fromARGB(255, 152, 144, 144))),
          ),
        ],
      ),
    );
  }
}
