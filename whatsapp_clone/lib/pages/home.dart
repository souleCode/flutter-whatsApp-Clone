import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        centerTitle: false,
        title: const Text(
          'Discussion',
          style: TextStyle(
            color: Colors.green,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.camera_alt, color: Colors.black),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search, color: Colors.black),
          ),
          PopupMenuButton<String>(
            onSelected: (value) {
              // Handle the selected value
            },
            itemBuilder: (context) {
              return [
                const PopupMenuItem<String>(
                  value: '1',
                  child: Text('Nouveau groupe'),
                ),
                const PopupMenuItem<String>(
                  value: '2',
                  child: Text('Nouvelle diffusion'),
                ),
              ];
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    height: 35,
                    width: 75,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Toutes',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    height: 35,
                    width: 110,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color.fromARGB(255, 157, 150, 150),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Non lues 99+',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    height: 35,
                    width: 75,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color.fromARGB(255, 157, 150, 150),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Favoris 1',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    height: 35,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color.fromARGB(255, 157, 150, 150),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Groupes 99+',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    height: 35,
                    width: 140,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color.fromARGB(255, 157, 150, 150),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Communautés 52+',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 157, 150, 150),
                      shape: BoxShape.circle,
                    ),
                    child: Center(child: Icon(Icons.add, color: Colors.white)),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 20),
          //_discussionItem
          _discussionItem(
            "Awa",
            "assets/images/avatar8.jpeg",
            "Bonjour Souley comment tu vas?",
            "12:10",
          ),
          _discussionItem(
            "Collab 2",
            "assets/images/avatar9.jpeg",
            "Bonjour chef. Verifie le repot Gith il ya des merges a ?",
            "08:14",
          ),
          _discussionItem(
            "Encadrant IA",
            "assets/images/avatar.jpeg",
            "Okey TRAORE j'ai vu ton travail je te reviendrai en debut de semaine..",
            "03:23",
          ),
          _discussionItem(
            "Kader RCI",
            "assets/images/avatar9.jpeg",
            "yf tu verras bien sa reponse. Je te dis rien d'abord",
            "05:10",
          ),
          _discussionItem(
            "Grando",
            "assets/images/avatar3.jpeg",
            "Bonjour Solo comment tu vas ?",
            "07:20",
          ),
          _discussionItem(
            "Adama grand Frere RCI",
            "assets/images/avatar5.jpeg",
            "D'accord ya pas de soucis. Porte toi bien p'tit frere",
            "hier",
          ),
          _discussionItem(
            "Cherie Zerbo ❤️",
            "assets/images/avatar9.jpeg",
            "Bonjour chéri comment tu vas? J'espere que ta matinee se passe bien",
            "09:02",
          ),
          _discussionItem(
            "Fati",
            "assets/images/avatar2.jpeg",
            "Oui Souleymane alhamdoulilah cava.",
            "13:23",
          ),
          _discussionItem(
            "Awa",
            "assets/images/avatar8.jpeg",
            "Bonjour Souley comment tu vas?",
            "12:10",
          ),
          _discussionItem(
            "Collab 2",
            "assets/images/avatar9.jpeg",
            "Bonjour chef. Verifie le repot Gith il ya des merges a ?",
            "08:14",
          ),
          _discussionItem(
            "Encadrant IA",
            "assets/images/avatar.jpeg",
            "Okey TRAORE j'ai vu ton travail je te reviendrai en debut de semaine..",
            "03:23",
          ),
          _discussionItem(
            "Kader RCI",
            "assets/images/avatar9.jpeg",
            "yf tu verras bien sa reponse. Je te dis rien d'abord",
            "05:10",
          ),
          _discussionItem(
            "Grando",
            "assets/images/avatar3.jpeg",
            "Bonjour Solo comment tu vas ?",
            "07:20",
          ),
          _discussionItem(
            "Adama grand Frere RCI",
            "assets/images/avatar5.jpeg",
            "D'accord ya pas de soucis. Porte toi bien p'tit frere",
            "hier",
          ),
          _discussionItem(
            "Cherie Zerbo ❤️",
            "assets/images/avatar9.jpeg",
            "Bonjour chéri comment tu vas? J'espere que ta matinee se passe bien",
            "09:02",
          ),
          _discussionItem(
            "Fati",
            "assets/images/avatar2.jpeg",
            "Oui Souleymane alhamdoulilah cava.",
            "13:23",
          ),
          _discussionItem(
            "Awa",
            "assets/images/avatar8.jpeg",
            "Bonjour Souley comment tu vas?",
            "12:10",
          ),
          _discussionItem(
            "Collab 2",
            "assets/images/avatar9.jpeg",
            "Bonjour chef. Verifie le repot Gith il ya des merges a ?",
            "08:14",
          ),
          _discussionItem(
            "Encadrant IA",
            "assets/images/avatar.jpeg",
            "Okey TRAORE j'ai vu ton travail je te reviendrai en debut de semaine..",
            "03:23",
          ),
          _discussionItem(
            "Kader RCI",
            "assets/images/avatar9.jpeg",
            "yf tu verras bien sa reponse. Je te dis rien d'abord",
            "05:10",
          ),
          _discussionItem(
            "Grando",
            "assets/images/avatar3.jpeg",
            "Bonjour Solo comment tu vas ?",
            "07:20",
          ),
          _discussionItem(
            "Adama grand Frere RCI",
            "assets/images/avatar5.jpeg",
            "D'accord ya pas de soucis. Porte toi bien p'tit frere",
            "hier",
          ),
          _discussionItem(
            "Cherie Zerbo ❤️",
            "assets/images/avatar9.jpeg",
            "Bonjour chéri comment tu vas? J'espere que ta matinee se passe bien",
            "09:02",
          ),
          _discussionItem(
            "Fati",
            "assets/images/avatar2.jpeg",
            "Oui Souleymane alhamdoulilah cava.",
            "13:23",
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.green,
        child: const Icon(Icons.chat, color: Colors.white),
      ),
    );
  }
}

// LisTile widget

Widget _discussionItem(
  String title,
  String imagePath,
  String message,
  String time,
) {
  return ListTile(
    onTap: () {
      //action
    },
    leading: CircleAvatar(backgroundImage: AssetImage(imagePath)),
    title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
    subtitle: Text(message, maxLines: 1, overflow: TextOverflow.ellipsis),
    trailing: Text(
      time,
      style: const TextStyle(color: Colors.grey, fontSize: 12),
    ),
  );
}
