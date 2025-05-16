import 'package:flutter/material.dart';

class CommunityScreen extends StatefulWidget {
  const CommunityScreen({super.key});

  @override
  State<CommunityScreen> createState() => _CommunityScreenState();
}

class _CommunityScreenState extends State<CommunityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text(
          'Communautés',
          style: TextStyle(
            color: Colors.green,
            fontWeight: FontWeight.bold,
            fontSize: 28,
          ),
        ),
      ),
      body: ListView(
        children: [
          // ✅ Info card
          Padding(
            padding: const EdgeInsets.all(12),
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.lightbulb_outline, color: Colors.grey),
                      SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          'Les communautés changent de place',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Text.rich(
                      TextSpan(
                        text:
                            'Consultez les communautés et créez-en dans l’onglet Discussions. ',
                        children: [
                          TextSpan(
                            text: 'Voir les communautés',
                            style: TextStyle(color: Colors.green),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // ✅ Groupe AEBM annonce
          _buildGroupSection("AEBM annonce", [
            _buildNotifRow(
              "Nouveau groupe \" 🇧🇫 A.E.B.M SECTION MEKNES 🇲🇦 \" ajouté",
              showDot: true,
            ),
            _buildGroupTile(
              imagePath: 'assets/images/aeebm.jpg',
              title: 'Annonces',
              subtitle: 'Youssouf Ma🇲🇦 : https://docs.google...',
              date: '4/11/25',
              pinned: true,
            ),
            _buildGroupTile(
              imagePath: 'assets/images/aeebm.jpg',
              title: '🇧🇫 A.E.B.M SECTION MEKNES🇲🇦',
              subtitle: 'Bambara Bleu🇲🇦 : 🎤 Sticker',
              date: 'Hier',
              showDot: true,
            ),
          ]),

          // ✅ Groupe CEEAM
          _buildGroupSection("CEEAM", [
            _buildNotifRow('Nouveau groupe "Lauréats" ajouté', showDot: true),
            _buildGroupTile(
              imagePath: 'assets/images/ceeam.jpg',
              title: 'Annonces',
              subtitle: 'Gérard Ma🇲🇦 a ajouté le groupe "Lauréats"',
              date: '2/17/25',
            ),
            _buildGroupTile(
              imagePath: 'assets/images/ceeam.jpg',
              title: 'CEEAM',
              subtitle: 'Herman Bleu🇲🇦 : D\'accord bien...',
              date: '2/17/25',
            ),
          ]),

          // ✅ GIIA-DS
          _buildGroupSection("GIIADS-PROMO 2026 -ENSAM MEKNES", [
            _buildGroupTile(
              imagePath: '',
              title: 'Annonces',
              subtitle: '~ZENLEX: D\'apres Mr Hosni: un pojet...',
              date: 'Lundi',
            ),
            _buildGroupTile(
              title: 'GIIADS-PROMO 2026 ENSAM MEKNES',
              imagePath: 'assets/images/ceeam.jpg',
              subtitle: '~Elhassani: Nta howa lfounder...',
              date: 'Hier',
            ),
          ]),
          // ✅ Zindi Burkina Faso
          _buildGroupSection("Zindi Burkina Faso", [
            _buildNotifRow(
              'Nouveau groupe "Zindi IA-Medecine" et "Zindi Burkina Faso"  ajoutés',
              showDot: true,
            ),
            _buildGroupTile(
              subtitle: 'Alban Ouedraogo a ajouté le groupe...',
              imagePath: '',
              title: 'Annonces',
              date: '3/31/25',
            ),
            _buildGroupTile(
              title: 'Zindi Burkina Faso',
              imagePath: '',
              subtitle: '~Regis KABORE:@Alban Ouedraogo...',
              date: 'Hier',
              showDot: true,
            ),
          ]),
        ],
      ),
    );
  }
}

// 🔵 Widget : Notification tile (groupe créé)
Widget _buildNotifRow(String text, {bool showDot = false}) {
  return ListTile(
    leading: const Icon(Icons.notifications_none_outlined),
    title: Text(text, style: const TextStyle(fontSize: 14)),
    trailing:
        showDot
            ? const Icon(Icons.circle, color: Colors.green, size: 10)
            : null,
  );
}

// 🔵 Widget : Group tile (Annonces, Groupe...)
Widget _buildGroupTile({
  required String imagePath,
  required String title,
  required String subtitle,
  required String date,
  bool pinned = false,
  bool showDot = false,
}) {
  return ListTile(
    leading: CircleAvatar(backgroundImage: AssetImage(imagePath), radius: 20),
    title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
    subtitle: Text(subtitle, overflow: TextOverflow.ellipsis),
    trailing: Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(date, style: const TextStyle(fontSize: 12)),
        const SizedBox(height: 4),
        if (pinned)
          const Icon(Icons.push_pin, size: 16, color: Colors.grey)
        else if (showDot)
          const Icon(Icons.circle, color: Colors.green, size: 10),
      ],
    ),
  );
}

// 🔵 Widget : Section (Titre + "Voir tout")
Widget _buildGroupSection(String title, List<Widget> children) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Text('Voir tout', style: TextStyle(fontSize: 15)),
            ),
          ],
        ),
      ),
      ...children,
      const Divider(indent: 16, endIndent: 16),
    ],
  );
}
