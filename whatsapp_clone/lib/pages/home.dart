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
        centerTitle: false,
        title: const Text(
          'Whatsapp UI',
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

          ListTile(
            leading: const CircleAvatar(
              backgroundImage: NetworkImage(
                'https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0',
              ),
            ),
            title: const Text('Issa DEMBELE'),
            subtitle: const Text(
              "Yo! grand cava.? Desolé de l'appel manqué je dormais 🤧",
            ),
            trailing: const Text('10:30'),
          ),
          ListTile(
            leading: const CircleAvatar(
              backgroundImage: NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3XWcVEd1f2Sfs43LboWN_lako2E-glsNeRQ&s',
              ),
            ),
            title: const Text("Ma Cherie"),
            subtitle: const Text(
              'Heyy ta fille là? Elle est la sur son telephone seulement🤣🤣🤣🤣',
            ),
            trailing: const Text('11:00'),
          ),
          ListTile(
            leading: const CircleAvatar(
              backgroundImage: NetworkImage(
                'https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0',
              ),
            ),
            title: const Text('Issa DEMBELE'),
            subtitle: const Text(
              "Yo! grand cava.? Desolé de l'appel manqué je dormais 🤧",
            ),
            trailing: const Text('10:30'),
          ),
          ListTile(
            leading: const CircleAvatar(
              backgroundImage: NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3XWcVEd1f2Sfs43LboWN_lako2E-glsNeRQ&s',
              ),
            ),
            title: const Text("Ma Cherie❤️"),
            subtitle: const Text(
              'Heyy ta fille là? Elle est la sur son telephone seulement🤣🤣🤣🤣',
            ),
            trailing: const Text('11:00'),
          ),
          ListTile(
            leading: const CircleAvatar(
              backgroundImage: NetworkImage(
                'https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0',
              ),
            ),
            title: const Text('Issa DEMBELE❤️'),
            subtitle: const Text(
              "Yo! grand cava.? Desolé de l'appel manqué je dormais 🤧",
            ),
            trailing: const Text('10:30'),
          ),
          ListTile(
            leading: const CircleAvatar(
              backgroundImage: NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3XWcVEd1f2Sfs43LboWN_lako2E-glsNeRQ&s',
              ),
            ),
            title: const Text("Ma Cherie❤️"),
            subtitle: const Text(
              'Heyy ta fille là? Elle est la sur son telephone seulement🤣🤣🤣🤣',
            ),
            trailing: const Text('11:00'),
          ),
          ListTile(
            leading: const CircleAvatar(
              backgroundImage: NetworkImage(
                'https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0',
              ),
            ),
            title: const Text('Issa DEMBELE❤️'),
            subtitle: const Text(
              "Yo! grand cava.? Desolé de l'appel manqué je dormais 🤧",
            ),
            trailing: const Text('10:30'),
          ),
          ListTile(
            leading: const CircleAvatar(
              backgroundImage: NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3XWcVEd1f2Sfs43LboWN_lako2E-glsNeRQ&s',
              ),
            ),
            title: const Text("Ma Cherie❤️"),
            subtitle: const Text(
              'Heyy ta fille là? Elle est la sur son telephone seulement🤣🤣🤣🤣',
            ),
            trailing: const Text('11:00'),
          ),
          ListTile(
            leading: const CircleAvatar(
              backgroundImage: NetworkImage(
                'https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0',
              ),
            ),
            title: const Text('Issa DEMBELE❤️'),
            subtitle: const Text(
              "Yo! grand cava.? Desolé de l'appel manqué je dormais 🤧",
            ),
            trailing: const Text('10:30'),
          ),
          ListTile(
            leading: const CircleAvatar(
              backgroundImage: NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3XWcVEd1f2Sfs43LboWN_lako2E-glsNeRQ&s',
              ),
            ),
            title: const Text("Ma Cherie❤️"),
            subtitle: const Text(
              'Heyy ta fille là? Elle est la sur son telephone seulement🤣🤣🤣🤣',
            ),
            trailing: const Text('11:00'),
          ),
          ListTile(
            leading: const CircleAvatar(
              backgroundImage: NetworkImage(
                'https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0',
              ),
            ),
            title: const Text('Issa DEMBELE❤️'),
            subtitle: const Text(
              "Yo! grand cava.? Desolé de l'appel manqué je dormais 🤧",
            ),
            trailing: const Text('10:30'),
          ),
          ListTile(
            leading: const CircleAvatar(
              backgroundImage: NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3XWcVEd1f2Sfs43LboWN_lako2E-glsNeRQ&s',
              ),
            ),
            title: const Text("Ma Cherie❤️"),
            subtitle: const Text(
              'Heyy ta fille là? Elle est la sur son telephone seulement🤣🤣🤣🤣',
            ),
            trailing: const Text('11:00'),
          ),
          ListTile(
            leading: const CircleAvatar(
              backgroundImage: NetworkImage(
                'https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0',
              ),
            ),
            title: const Text('Issa DEMBELE❤️'),
            subtitle: const Text(
              "Yo! grand cava.? Desolé de l'appel manqué je dormais 🤧",
            ),
            trailing: const Text('10:30'),
          ),
          ListTile(
            leading: const CircleAvatar(
              backgroundImage: NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3XWcVEd1f2Sfs43LboWN_lako2E-glsNeRQ&s',
              ),
            ),
            title: const Text("Ma Cherie❤️"),
            subtitle: const Text(
              'Heyy ta fille là? Elle est la sur son telephone seulement🤣🤣🤣🤣',
            ),
            trailing: const Text('11:00'),
          ),
          ListTile(
            leading: const CircleAvatar(
              backgroundImage: NetworkImage(
                'https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0',
              ),
            ),
            title: const Text('Issa DEMBELE❤️'),
            subtitle: const Text(
              "Yo! grand cava.? Desolé de l'appel manqué je dormais 🤧",
            ),
            trailing: const Text('10:30'),
          ),
          ListTile(
            leading: const CircleAvatar(
              backgroundImage: NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3XWcVEd1f2Sfs43LboWN_lako2E-glsNeRQ&s',
              ),
            ),
            title: const Text("Ma Cherie❤️"),
            subtitle: const Text(
              'Heyy ta fille là? Elle est la sur son telephone seulement🤣🤣🤣🤣',
            ),
            trailing: const Text('11:00'),
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
