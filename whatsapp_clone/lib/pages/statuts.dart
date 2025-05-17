import 'package:flutter/material.dart';

class ActusScreen extends StatefulWidget {
  const ActusScreen({super.key});

  @override
  State<ActusScreen> createState() => _ActusScreenState();
}

class _ActusScreenState extends State<ActusScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        title: const Text(
          "Actus",
          style: TextStyle(
            fontSize: 28,
            color: Colors.green,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: const [
          Icon(Icons.camera_alt_outlined),
          SizedBox(width: 16),
          Icon(Icons.edit),
          SizedBox(width: 16),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        children: [
          const SizedBox(height: 10),
          const Text(
            "Statut",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                statusItem(
                  label: "Ajouter\nun statut",
                  image: "assets/images/souley.jpg",
                  showAdd: true,
                ),
                statusItem(
                  image: "assets/images/avatar3.jpeg",
                  label: "Ing. PODA",
                ),
                statusItem(
                  image: "assets/images/avatar.jpeg",
                  label: "Dr. Zako❤️",
                ),
                statusItem(
                  image: "assets/images/avatar2.jpeg",
                  label: "AWA Bamba",
                ),
                statusItem(
                  image: "assets/images/avatar4.jpeg",
                  label: "BANDA ❤️",
                ),
                statusItem(
                  image: "assets/images/avatar5.jpeg",
                  label: "P'tite Soeur",
                ),
                statusItem(
                  image:"assets/images/avatar8.jpeg",
                  label: "Aicha KBRE.",
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Chaînes",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              Text("Découvrir", style: TextStyle(color: Colors.blue)),
            ],
          ),
          const SizedBox(height: 12),
          channelTile(
            "Real Madrid C.F.",
            "assets/images/real-madrid.png",
            "😎 DEAN HUIJSEN.",
            "12:20",
            "24",
          ),
          channelTile(
            "FC Barcelona",
            "assets/images/barcelone.png",
            "Living the moment, building the future.",
            "11:11",
            "356",
          ),
          channelTile(
            "WhatsApp",
            "assets/images/whatsapp.png",
            "Sounds like this channel is ready for rest and relaxation!",
            "Hier",
            "28",
          ),
          channelTile(
            "Everton",
            "assets/images/everton.png",
            "Everton Football Club is proud to...",
            "Hier",
            "18",
          ),
           channelTile(
            "Spotify",
            "assets/images/spotify.png",
            "Living the moment, building the future.",
            "11:11",
            "356",
          ),
           channelTile(
            "Chelsea",
            "assets/images/chelsea.png",
            "Living the moment, building the future.",
            "11:11",
            "356",
          ),
           channelTile(
            "PARIS",
            "assets/images/paris-saint-germain.png",
            "Living the moment, building the future.",
            "11:11",
            "356",
          ),
           channelTile(
            "Arsenal",
            "assets/images/arsenal.png",
            "Living the moment, building the future.",
            "11:11",
            "356",
          ),
           channelTile(
            "Bayern Munchen",
            "assets/images/bayern-munchen.png",
            "Living the moment, building the future.",
            "11:11",
            "356",
          ),
           channelTile(
            "Bayern Leverkusen",
            "assets/images/bayern-leverkusen.png",
            "Living the moment, building the future.",
            "11:11",
            "356",
          ),
           channelTile(
            "FC Barcelona",
            "assets/images/barcelone.png",
            "Living the moment, building the future.",
            "11:11",
            "356",
          ),
           channelTile(
            "Real Madrid C.F",
            "assets/images/real-madrid.png",
            "Living the moment, building the future.",
            "11:11",
            "356",
          ),
        ],
      ),
    );
  }
}

Widget statusItem({
  String? imageUrl,
  String? image,
  required String label,
  bool showAdd = false,
}) {
  return Padding(
    padding: const EdgeInsets.only(right: 12),
    child: Column(
      children: [
        Stack(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage:
                  imageUrl != null
                      ? NetworkImage(imageUrl)
                      : AssetImage(image!) as ImageProvider,
            ),
            if (showAdd)
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  height: 20,
                  width: 20,
                  decoration: const BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                  ),
                  child: const Center(
                    child: Icon(Icons.add, size: 16, color: Colors.white),
                  ),
                ),
              ),
          ],
        ),
        const SizedBox(height: 6),
        Text(
          label,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 12),
        ),
      ],
    ),
  );
}

Widget channelTile(
  String title,
  String imagePath,
  String subtitle,
  String time,
  String count,
) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 10),
    child: Row(
      children: [
        CircleAvatar(radius: 24, backgroundImage: AssetImage(imagePath)),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: const TextStyle(fontWeight: FontWeight.w500)),
              const SizedBox(height: 4),
              Text(
                subtitle,
                style: const TextStyle(color: Colors.grey, fontSize: 13),
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              time,
              style: const TextStyle(color: Colors.grey, fontSize: 12),
            ),
            const SizedBox(height: 4),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                count,
                style: const TextStyle(color: Colors.white, fontSize: 12),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
