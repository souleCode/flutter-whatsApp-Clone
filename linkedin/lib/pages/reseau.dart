import 'package:flutter/material.dart';
import 'package:linkedin/pages/appbar.dart';

class ReseauScreen extends StatefulWidget {
  const ReseauScreen({super.key});

  @override
  State<ReseauScreen> createState() => _ReseauScreenState();
}

class _ReseauScreenState extends State<ReseauScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                // Section "Développer"
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Développer',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),

                // Section "Reprendre contact"
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    'Reprendre contact',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[700],
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 16),

            // Section "Invitations"
            Card(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Invitations (3)',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 16),
                    _buildInvitation(
                      name: 'AZIZ SOUOBOU',
                      description: 'Master 1 en mécanique ava...',
                      imageUrl:
                          "https://randomuser.me/api/portraits/men/48.jpg",
                      connections: '59 relations en commun',
                      time: 'Aujourd\'hui',
                    ),
                    const SizedBox(height: 16),
                    _buildInvitation(
                      name: 'Zakaria DAO',
                      imageUrl: "https://randomuser.me/api/portraits/men/1.jpg",
                      description: 'Developpeur full stack chez @Orange',
                      connections: '105 relations en commun',
                      time: 'Hier',
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 24),

            // Section "Gérer mon réseau"
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Gérer mon réseau',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Personnes que vous connaissez peut-être chez École Nationale Supérieure d\'Arts et Métiers',
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 16),
            //contacts
            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              childAspectRatio: 0.9,
              padding: const EdgeInsets.symmetric(horizontal: 8),
              children: [
                _buildContactCard(
                  name: 'Btissam Tissafi Idrissi',
                  title: 'Elève ingénieure | ENSAM-Meknès',
                  connections: 'YAHYA et 31 autres relations en commun',
                  imageUrl: 'https://randomuser.me/api/portraits/women/41.jpg',
                ),
                _buildContactCard(
                  name: 'Mohamed AQABLI',
                  title: 'Electromechanical Systems Engineer | In...',
                  connections: 'YAHYA et 62 autres relations en commun',
                  imageUrl: 'https://randomuser.me/api/portraits/men/32.jpg',
                ),
                _buildContactCard(
                  name: 'ANASSI MEKNES',
                  title: "Ingenieur Telecom",
                  connections: 'Younes et 53 autres relations en commun',
                  imageUrl: 'https://randomuser.me/api/portraits/women/22.jpg',
                ),
                _buildContactCard(
                  name: 'Mansouri Salma',
                  title: 'civil engineering student at École Natio...',
                  connections: 'YAHYA et 190 autres relations en commun',
                  imageUrl: 'https://randomuser.me/api/portraits/women/15.jpg',
                ),
                 _buildContactCard(
                  name: 'Btissam Tissafi Idrissi',
                  title: 'Elève ingénieure | ENSAM-Meknès',
                  connections: 'YAHYA et 31 autres relations en commun',
                  imageUrl: 'https://randomuser.me/api/portraits/women/41.jpg',
                ),
                _buildContactCard(
                  name: 'Mohamed AQABLI',
                  title: 'Electromechanical Systems Engineer | In...',
                  connections: 'YAHYA et 62 autres relations en commun',
                  imageUrl: 'https://randomuser.me/api/portraits/men/32.jpg',
                ),
                _buildContactCard(
                  name: 'ANASSI MEKNES',
                  title: "Ingenieur Telecom",
                  connections: 'Younes et 53 autres relations en commun',
                  imageUrl: 'https://randomuser.me/api/portraits/women/22.jpg',
                ),
                _buildContactCard(
                  name: 'Mansouri Salma',
                  title: 'civil engineering student at École Natio...',
                  connections: 'Moise et 190 autres relations en commun',
                  imageUrl: 'https://randomuser.me/api/portraits/women/15.jpg',
                ),
                 _buildContactCard(
                  name: 'Btissam Tissafi Idrissi',
                  title: 'Elève ingénieure | ENSAM-Meknès',
                  connections: 'Yonli et 31 autres relations en commun',
                  imageUrl: 'https://randomuser.me/api/portraits/women/41.jpg',
                ),
                _buildContactCard(
                  name: 'Mohamed AQABLI',
                  title: 'Electromechanical Systems Engineer | In...',
                  connections: 'Belem et 62 autres relations en commun',
                  imageUrl: 'https://randomuser.me/api/portraits/men/32.jpg',
                ),
                _buildContactCard(
                  name: 'ANASSI MEKNES',
                  title: "Ingenieur Telecom",
                  connections: 'NYANTUDRE et 53 autres relations en commun',
                  imageUrl: 'https://randomuser.me/api/portraits/women/22.jpg',
                ),
                _buildContactCard(
                  name: 'Mansouri Salma',
                  title: 'civil engineering student at École Natio...',
                  connections: 'SALMA et 190 autres relations en commun',
                  imageUrl: 'https://randomuser.me/api/portraits/women/15.jpg',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// widgets
Widget _buildInvitation({
  required String name,
  required String description,
  required String connections,
  required String time,
  required String imageUrl,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        children: [
          CircleAvatar(radius: 24, backgroundImage: NetworkImage(imageUrl)),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$name vous suit et vous a invité(e) à rejoindre son réseau',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(description),
                Text(
                  connections,
                  style: TextStyle(color: Colors.grey[600], fontSize: 12),
                ),
              ],
            ),
          ),
        ],
      ),
      const SizedBox(height: 12),
      Row(
        children: [
          Expanded(
            child: OutlinedButton(
              onPressed: () {},
              child: const Text('Ignorer'),
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Accepter'),
            ),
          ),
        ],
      ),
      const SizedBox(height: 8),
      Text(time, style: TextStyle(color: Colors.grey[500], fontSize: 12)),
    ],
  );
}

//
Widget _buildContactCard({
  required String name,
  required String title,
  required String connections,
  required String imageUrl,
}) {
  return Card(
    child: Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Nom en gras comme titre
          Text(
            name.split(' ')[0], // Prénom seulement
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          // Nom complet en gras dessous
          Text(
            name,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          ),
          // Titre
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            child: Text(
              title,
              style: TextStyle(fontSize: 12, color: Colors.grey[700]),
            ),
          ),
          // Avatar et relations
          Row(
            children: [
              CircleAvatar(radius: 20, backgroundImage: NetworkImage(imageUrl)),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  connections,
                  style: TextStyle(fontSize: 11, color: Colors.grey[600]),
                ),
              ),
            ],
          ),
          const Spacer(),
          // Bouton Se connecter
          SizedBox(
            width: double.infinity,
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                backgroundColor: Colors.white24,
                padding: const EdgeInsets.symmetric(vertical: 8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                  side: const BorderSide(
                    color: Colors.lightBlue, // Couleur de la bordure
                    width: 1.0, // Épaisseur de la bordure
                  ),
                ),
              ),
              child: const Text(
                'Se connecter',
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

///
///// 1. Créez une liste de vos contacts
final List<Map<String, String>> contacts = [
  {
    'name': 'Btissam Tissafi Idrissi',
    'title': 'Elève ingénieure | ENSAM-Meknès',
    'connections': 'YAHYA et 31 autres relations en commun',
    'imageUrl': 'https://randomuser.me/api/portraits/women/41.jpg',
  },
  {
    'name': 'ANASSI Salma',
    'title': 'Eleve Ingenieur en Informatique',
    'connections': 'Alban et 25 autres relations en communs',
    'imageUrl': 'https://randomuser.me/api/portraits/women/4.jpg',
  },
  {
    'name': 'Btissam Tissafi Idrissi',
    'title': 'Elève ingénieure | ENSAM-Meknès',
    'connections': 'YAHYA et 31 autres relations en commun',
    'imageUrl': 'https://randomuser.me/api/portraits/women/41.jpg',
  },
  {
    'name': 'ANASSI Salma',
    'title': 'Eleve Ingenieur en Informatique',
    'connections': 'Alban et 25 autres relations en communs',
    'imageUrl': 'https://randomuser.me/api/portraits/women/4.jpg',
  },
];
