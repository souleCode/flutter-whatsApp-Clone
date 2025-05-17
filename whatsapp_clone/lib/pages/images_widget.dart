import 'package:flutter/material.dart';
import 'package:whatsapp_clone/pages/call.dart';
import 'package:whatsapp_clone/pages/commun.dart';
import 'package:whatsapp_clone/pages/home.dart';
import 'package:whatsapp_clone/pages/setttings.dart';
import 'package:whatsapp_clone/pages/statuts.dart';

class ImagesWidget extends StatefulWidget {
  const ImagesWidget({super.key});
  @override
  State<ImagesWidget> createState() => _ImagesWidgetState();
}

class _ImagesWidgetState extends State<ImagesWidget> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    const ActusScreen(),
    const CallScreen(),
    const CommunityScreen(),
    const HomeScreen(),
    const SettingScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 20.0,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.green,
        unselectedLabelStyle: TextStyle(color: Colors.black, fontSize: 14),
        selectedLabelStyle: TextStyle(color: Colors.green, fontSize: 14),
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle, color: Colors.black),
            label: 'Statut',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call, color: Colors.black),
            label: 'Appels',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.groups, color: Colors.black),
            label: 'Communautés',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat, color: Colors.black),
            label: 'Discussions',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings, color: Colors.black),
            label: 'Paramètres',
          ),
        ],
      ),
    );
  }
}
