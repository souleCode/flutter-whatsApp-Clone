import 'package:flutter/material.dart';

class CallScreen extends StatefulWidget {
  const CallScreen({super.key});

  @override
  State<CallScreen> createState() => CallScreenState();
}

class CallScreenState extends State<CallScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 5,
        title: const Text(
          'Appels',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.green,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.more_horiz, color: Colors.black),
          onPressed: () {},
          iconSize: 30,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              right: 16.0,
            ), // ou EdgeInsets.all(8.0)
            child: Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                color: Colors.green,
                shape: BoxShape.circle,
              ),
              child: const Center(child: Icon(Icons.add, color: Colors.white)),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          _buildSectionHeader('Favoris', true),
          _buildContactFavorite("assets/images/avatar.jpeg", "Mon Fils ❤️❤️"),

          const SizedBox(height: 30),

          _buildSectionHeader('Récents', false),
          _buildCallItem(
            "assets/images/avatar3.jpeg",
            "Adjara ❤️",
            "Entrant",
            "Hier",
            hasNotification: true,
            notificationCount: 5,
          ),
          _buildDivider(),

          _buildCallItem(
            "assets/images/avatar2.jpeg",
            "Rachidatou Paris",
            "Sortant",
            "Hier",
          ),
          _buildDivider(),

          _buildCallItem(
            "assets/images/avatar.jpeg",
            "Ahmed TOURE ",
            "Entrant",
            "Hier",
            hasNotification: true,
            notificationCount: 3,
          ),
          _buildDivider(),

          _buildCallItem(
            "assets/images/avatar.jpeg",
            "Yacou SANOU ",
            "Manqué",
            "Hier",
            isVideoMissed: false,
          ),
          _buildDivider(),

          _buildCallItem(
            "assets/images/avatar.jpeg",
            "MAIGA RCI",
            "Sortant",
            "Hier",
          ),
          _buildDivider(),

          _buildCallItem(
            "assets/images/avatar.jpeg",
            "Tamini Ma🇲🇦",
            "Sortant",
            "mercredi",
          ),
          _buildDivider(),

          _buildCallItem(
            "assets/images/avatar.jpeg",
            "Malama Ma🇲🇦",
            "Entrant",
            "mardi",
          ),
          _buildDivider(),

          _buildCallItem(
            "assets/images/avatar3.jpeg",
            "Fati ❤️ 🇲🇦",
            "",
            "Lundi",
            hasNotification: true,
            notificationCount: 2,
          ),
          _buildDivider(),

          _buildCallItem(
            "assets/images/avatar.jpeg",
            "Malama Ma🇲🇦",
            "Entrant",
            "mardi",
          ),
          _buildDivider(),

          _buildCallItem(
            "assets/images/avatar3.jpeg",
            "Fati ❤️ 🇲🇦",
            "",
            "samedi",
            hasNotification: true,
            notificationCount: 2,
          ),
          _buildDivider(),

          _buildCallItem(
            "assets/images/avatar.jpeg",
            "Malama Ma🇲🇦",
            "Entrant",
            "mardi",
          ),
          _buildDivider(),

          _buildCallItem(
            "assets/images/avatar3.jpeg",
            "Fati ❤️ 🇲🇦",
            "",
            "02/05/2025",
            hasNotification: true,
            notificationCount: 2,
          ),
          _buildDivider(),

          _buildCallItem(
            "assets/images/avatar.jpeg",
            "Malama Ma🇲🇦",
            "Entrant",
            "mardi",
          ),
          _buildDivider(),

          _buildCallItem(
            "assets/images/avatar3.jpeg",
            "Fati ❤️ 🇲🇦",
            "",
            "15/03/2025",
            hasNotification: true,
            notificationCount: 2,
          ),
        ],
      ),
    );
  }
}

Widget _buildSectionHeader(String title, bool showPlus) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        if (showPlus)
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Text(
              'Plus',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
      ],
    ),
  );
}

Widget _buildContactFavorite(String imagePath, String name) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(radius: 25, backgroundImage: AssetImage(imagePath)),
            const SizedBox(width: 12),
            Text(
              name,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Row(
          children: [
            IconButton(
              icon: const Icon(Icons.phone, size: 28),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.videocam, size: 28),
              onPressed: () {},
            ),
          ],
        ),
      ],
    ),
  );
}

Widget _buildCallItem(
  String imagePath,
  String name,
  String callType,
  String time, {
  bool isVideoMissed = false,
  bool hasNotification = false,
  int notificationCount = 0,
}) {
  IconData callIcon;
  Color iconColor = Colors.grey;

  if (callType == "Entrant") {
    callIcon = Icons.call_received;
  } else if (callType == "Sortant") {
    callIcon = Icons.call_made;
  } else if (callType == "Manqué") {
    callIcon = isVideoMissed ? Icons.videocam_off : Icons.call_missed;
    iconColor = Colors.red;
  } else {
    callIcon = Icons.call;
  }

  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(radius: 25, backgroundImage: AssetImage(imagePath)),
            const SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    if (hasNotification)
                      Container(
                        margin: const EdgeInsets.only(left: 5),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 2,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          "($notificationCount)",
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                  ],
                ),
                if (callType.isNotEmpty)
                  Row(
                    children: [
                      Icon(callIcon, size: 14, color: iconColor),
                      const SizedBox(width: 4),
                      Text(
                        callType,
                        style: TextStyle(color: Colors.grey[600], fontSize: 14),
                      ),
                    ],
                  ),
              ],
            ),
          ],
        ),
        Row(
          children: [
            Text(time, style: TextStyle(color: Colors.grey[600], fontSize: 14)),
            IconButton(
              icon: const Icon(Icons.info_outline, color: Colors.grey),
              onPressed: () {},
            ),
          ],
        ),
      ],
    ),
  );
}

Widget _buildDivider() {
  return const Divider(indent: 68, endIndent: 16, thickness: 0.5, height: 1);
}
