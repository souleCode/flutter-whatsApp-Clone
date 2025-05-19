import 'package:flutter/material.dart';
import 'package:linkedin_clone/pages/home.dart';
import 'package:linkedin_clone/pages/job.dart';
import 'package:linkedin_clone/pages/notif.dart';
import 'package:linkedin_clone/pages/publier.dart';
import 'package:linkedin_clone/pages/reseau.dart';

class ImagesWidget extends StatefulWidget {
  const ImagesWidget({super.key});
  @override
  State<ImagesWidget> createState() => _ImagesWidgetState();
}

class _ImagesWidgetState extends State<ImagesWidget> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    const HomeScreen(),
    const ReseauScreen(),
    const PublishScreen(),
    const NotifScreen(),
    const JobScreen(),
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
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Accueil'),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: 'Réseau'),
          BottomNavigationBarItem(icon: Icon(Icons.add_box), label: 'Poster'),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.work), label: 'Emplois'),
        ],
      ),
    );
  }
}
