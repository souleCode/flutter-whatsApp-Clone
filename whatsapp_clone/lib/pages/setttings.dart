import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        centerTitle: false,
        title: const Text(
          'Paramètres',
          style: TextStyle(
            color: Colors.green,
            fontWeight: FontWeight.bold,
            fontSize: 28,
          ),
        ),
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            // Barre de recherche
            TextField(
              decoration: InputDecoration(
                hintText: 'Rechercher',
                hintStyle: const TextStyle(
                  color: Color.fromARGB(179, 14, 12, 12),
                  fontSize: 16,
                ),
                prefixIcon: const Icon(
                  Icons.search,
                  color: Color.fromARGB(255, 17, 15, 15),
                ),
                filled: true,
                fillColor: const Color.fromARGB(255, 187, 182, 182),
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 10,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
              ),
              style: const TextStyle(color: Colors.black),
            ),
            const SizedBox(height: 20),

            // Profil utilisateur
            ListTile(
              leading: const CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("assets/images/souley.jpg"),
              ),
              title: const Text(
                "Souleymane TRAORE",
                style: TextStyle(
                  color: Color.fromARGB(255, 7, 5, 5),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: const Text(
                "I have no special talent, I'm...",
                style: TextStyle(color: Color.fromARGB(179, 19, 1, 1)),
              ),
              trailing: const Icon(
                Icons.qr_code,
                color: Color.fromARGB(255, 9, 9, 9),
              ),
              onTap: () {},
            ),
            const SizedBox(height: 30),

            // Section 1
            _buildSettingsSection([_buildSettingsItem(Icons.face, "Avatar")]),

            const SizedBox(height: 30),

            // Section 2
            _buildSettingsSection([
              _buildSettingsItem(Icons.photo_album, "Listes"),
              _buildSettingsItem(Icons.campaign, "Messages de diffusion"),
              _buildSettingsItem(Icons.star, "Important"),
              _buildSettingsItem(Icons.devices, "Appareils connectés"),
            ]),

            const SizedBox(height: 30),

            // Section 3
            _buildSettingsSection([
              _buildSettingsItem(Icons.vpn_key, "Compte"),
              _buildSettingsItem(Icons.lock, "Confidentialité"),
              _buildSettingsItem(Icons.chat, "Discussions"),
              _buildSettingsItem(Icons.notifications, "Notifications"),
              _buildSettingsItem(Icons.storage, "Stockage et données"),
            ]),
            const SizedBox(height: 30),
            // Section 4
            _buildSettingsSection([
              _buildSettingsItem(Icons.info, "Aide"),
              _buildSettingsItem(Icons.people, "Inviter un proche"),
            ]),
            const SizedBox(height: 30),

            Row(
              children: [
                Text(
                  "Autres produits Meta",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ],
            ),
            const SizedBox(height: 5),

            //section5
            _buildSettingsSection([
              _buildTile('instagram', 'Ouvrir Instagram', () {
                // action
              }),
              _buildTile('facebook', 'Ouvrir Facebook', () {
                //action
              }),
              _buildTile('threads', 'Ouvrir Threads', () {
                //action
              }),
              _buildTile('meta', "Ouvrir l'application Meta AI", () {
                //action
              }),
            ]),
          ],
        ),
      ),
    );
  }
}

Widget _buildSettingsSection(List<Widget> items) {
  return Container(
    decoration: BoxDecoration(
      // color: Colors.grey[900],
      borderRadius: BorderRadius.circular(12),
      border: Border.all(
        color: const Color.fromARGB(255, 222, 212, 212), // Couleur du contour
        width: 1.0,
      ),
    ),
    child: Column(children: items),
  );
}

Widget _buildSettingsItem(IconData icon, String title) {
  return ListTile(
    leading: Icon(icon, color: Colors.black),
    title: Text(title, style: const TextStyle(color: Colors.black)),
    trailing: const Icon(
      Icons.arrow_forward_ios,
      color: Colors.black,
      size: 16,
    ),
    onTap: () {},
  );
}

Widget _buildTile(String assetName, String label, VoidCallback onTap) {
  return Column(
    children: [
      ListTile(
        leading: Image.asset(
          'assets/icons/$assetName.png',
          width: 26,
          height: 26,
          color:
              Colors.black, // ou retire cette ligne si l’image est déjà blanche
        ),
        title: Text(
          label,
          style: const TextStyle(color: Colors.black, fontSize: 18),
        ),
        trailing: const Icon(
          Icons.arrow_forward_ios_rounded,
          color: Colors.black,
          size: 16,
        ),
        onTap: onTap,
      ),
    ],
  );
}
