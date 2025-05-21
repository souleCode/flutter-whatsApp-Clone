import 'package:flutter/material.dart';
import 'package:linkedin/pages/utils/notifAppBar.dart';

class NotifScreen extends StatefulWidget {
  const NotifScreen({super.key});

  @override
  State<NotifScreen> createState() => _NotifScreenState();
}

class _NotifScreenState extends State<NotifScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NotifAppBar(),
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
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
                    width: 130,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: Color.fromARGB(255, 157, 150, 150),
                      ),
                      color: Colors.white,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Offres d\'emploi',
                        style: TextStyle(color: Colors.black, fontSize: 14),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    height: 35,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: Color.fromARGB(255, 157, 150, 150),
                      ),
                      color: Colors.white,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Mes Posts',
                        style: TextStyle(color: Colors.black, fontSize: 14),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    height: 38,
                    width: 95,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: Color.fromARGB(255, 157, 150, 150),
                      ),
                      color: Colors.white,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Mentions',
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          // cartes de notification
          NotificationCard(
            imageUrl: 'https://randomuser.me/api/portraits/men/41.jpg',
            titleText: 'NYANTUDRE Alban a commenté votre post',
            subtitleText: 'Bravo Souleymane c\'est super !',
            timeAgo: '2 min',
            isNew: true,
            isOnline: true,
          ),
          const SizedBox(height: 10),
          NotificationCard(
            imageUrl: 'https://randomuser.me/api/portraits/men/15.jpg',
            titleText:
                'Dr. Zaki a publié un post: La conference Google I/O 2025 a eu lieu hier et une chose est claire: l\'I...',
            subtitleText: 'Congratulations Antoine',
            timeAgo: '32 min',
            isNew: true,
            isOnline: true,
          ),
          const SizedBox(height: 10),
          NotificationCard(
            imageUrl: 'https://randomuser.me/api/portraits/men/41.jpg',
            titleText: 'Komi EGBADODJI a commenté le post de YASSINE RAFIK',
            subtitleText: 'Congratulations Yassine',
            timeAgo: '2 min',
            isNew: true,
            isOnline: true,
          ),
          const SizedBox(height: 10),
          NotificationCard(
            imageUrl: 'https://randomuser.me/api/portraits/men/15.jpg',
            titleText:
                'Dr. Zaki a publié un post: La conference Google I/O 2025 a eu lieu hier et une chose est claire: l\'I...',
            subtitleText: 'Congratulations Antoine',
            timeAgo: '32 min',
            isNew: false,
            isOnline: true,
          ),
          const SizedBox(height: 10),
          NotificationCard(
            imageUrl: 'https://randomuser.me/api/portraits/men/41.jpg',
            titleText: 'Komi EGBADODJI a commenté le post de YASSINE RAFIK',
            subtitleText: 'Congratulations Yassine',
            timeAgo: '2 min',
            isNew: false,
            isOnline: true,
          ),
          const SizedBox(height: 10),
          NotificationCard(
            imageUrl: 'https://randomuser.me/api/portraits/men/15.jpg',
            titleText:
                'Dr. Zaki a publié un post: La conference Google I/O 2025 a eu lieu hier et une chose est claire: l\'I...',
            subtitleText: 'Congratulations Antoine',
            timeAgo: '32 min',
            isNew: true,
            isOnline: true,
          ),
          const SizedBox(height: 10),
          NotificationCard(
            imageUrl: 'https://randomuser.me/api/portraits/men/41.jpg',
            titleText: 'Komi EGBADODJI a commenté le post de YASSINE RAFIK',
            subtitleText: 'Congratulations Yassine',
            timeAgo: '2 min',
            isNew: false,
            isOnline: true,
          ),
          const SizedBox(height: 10),
          NotificationCard(
            imageUrl: 'https://randomuser.me/api/portraits/men/15.jpg',
            titleText:
                'Dr. Zaki a publié un post: La conference Google I/O 2025 a eu lieu hier et une chose est claire: l\'I...',
            subtitleText: 'Congratulations Antoine',
            timeAgo: '32 min',
            isNew: false,
            isOnline: false,
          ),
          const SizedBox(height: 10),
          NotificationCard(
            imageUrl: 'https://randomuser.me/api/portraits/men/41.jpg',
            titleText: 'Komi EGBADODJI a commenté le post de YASSINE RAFIK',
            subtitleText: 'Congratulations Yassine',
            timeAgo: '2 min',
            isNew: false,
            isOnline: false,
          ),
          const SizedBox(height: 10),
          NotificationCard(
            imageUrl: 'https://randomuser.me/api/portraits/men/15.jpg',
            titleText:
                'Dr. Zaki a publié un post: La conference Google I/O 2025 a eu lieu hier et une chose est claire: l\'I...',
            subtitleText: 'Congratulations Antoine',
            timeAgo: '32 min',
            isNew: true,
            isOnline: true,
          ),
          const SizedBox(height: 10),
          NotificationCard(
            imageUrl: 'https://randomuser.me/api/portraits/men/41.jpg',
            titleText: 'Komi EGBADODJI a commenté le post de YASSINE RAFIK',
            subtitleText: 'Congratulations Yassine',
            timeAgo: '2 min',
            isNew: true,
            isOnline: true,
          ),
          const SizedBox(height: 10),
          NotificationCard(
            imageUrl: 'https://randomuser.me/api/portraits/men/15.jpg',
            titleText:
                'Dr. Zaki a publié un post: La conference Google I/O 2025 a eu lieu hier et une chose est claire: l\'I...',
            subtitleText: 'Congratulations Antoine',
            timeAgo: '32 min',
            isNew: true,
            isOnline: true,
          ),
          const SizedBox(height: 10),
          NotificationCard(
            imageUrl: 'https://randomuser.me/api/portraits/men/41.jpg',
            titleText: 'Komi EGBADODJI a commenté le post de YASSINE RAFIK',
            subtitleText: 'Congratulations Yassine',
            timeAgo: '2 min',
            isNew: true,
            isOnline: true,
          ),
          const SizedBox(height: 10),
          NotificationCard(
            imageUrl: 'https://randomuser.me/api/portraits/men/15.jpg',
            titleText:
                'Dr. Zaki a publié un post: La conference Google I/O 2025 a eu lieu hier et une chose est claire: l\'I...',
            subtitleText: 'Congratulations Antoine',
            timeAgo: '32 min',
            isNew: true,
            isOnline: true,
          ),
          const SizedBox(height: 10),
          NotificationCard(
            imageUrl: 'https://randomuser.me/api/portraits/men/41.jpg',
            titleText: 'Komi EGBADODJI a commenté le post de YASSINE RAFIK',
            subtitleText: 'Congratulations Yassine',
            timeAgo: '2 min',
            isNew: true,
            isOnline: true,
          ),
          const SizedBox(height: 10),
          NotificationCard(
            imageUrl: 'https://randomuser.me/api/portraits/men/15.jpg',
            titleText:
                'Dr. Zaki a publié un post: La conference Google I/O 2025 a eu lieu hier et une chose est claire: l\'I...',
            subtitleText: 'Congratulations Antoine',
            timeAgo: '32 min',
            isNew: false,
            isOnline: true,
          ),
          const SizedBox(height: 10),
          NotificationCard(
            imageUrl: 'https://randomuser.me/api/portraits/men/41.jpg',
            titleText: 'Komi EGBADODJI a commenté le post de YASSINE RAFIK',
            subtitleText: 'Congratulations Yassine',
            timeAgo: '2 min',
            isNew: false,
            isOnline: true,
          ),
          const SizedBox(height: 10),
          NotificationCard(
            imageUrl: 'https://randomuser.me/api/portraits/men/15.jpg',
            titleText:
                'Dr. Zaki a publié un post: La conference Google I/O 2025 a eu lieu hier et une chose est claire: l\'I...',
            subtitleText: 'Congratulations Antoine',
            timeAgo: '32 min',
            isNew: false,
            isOnline: true,
          ),
          const SizedBox(height: 10),
          NotificationCard(
            imageUrl: 'https://randomuser.me/api/portraits/men/41.jpg',
            titleText: 'Komi EGBADODJI a commenté le post de YASSINE RAFIK',
            subtitleText: 'Congratulations Yassine',
            timeAgo: '2 min',
            isNew: false,
            isOnline: true,
          ),
          const SizedBox(height: 10),
          NotificationCard(
            imageUrl: 'https://randomuser.me/api/portraits/men/15.jpg',
            titleText:
                'Dr. Zaki a publié un post: La conference Google I/O 2025 a eu lieu hier et une chose est claire: l\'I...',
            subtitleText: 'Congratulations Antoine',
            timeAgo: '32 min',
            isNew: false,
            isOnline: true,
          ),
          const SizedBox(height: 10),
          NotificationCard(
            imageUrl: 'https://randomuser.me/api/portraits/men/41.jpg',
            titleText: 'Komi EGBADODJI a commenté le post de YASSINE RAFIK',
            subtitleText: 'Congratulations Yassine',
            timeAgo: '2 min',
            isNew: false,
            isOnline: true,
          ),
          const SizedBox(height: 10),
          NotificationCard(
            imageUrl: 'https://randomuser.me/api/portraits/men/15.jpg',
            titleText:
                'Dr. Zaki a publié un post: La conference Google I/O 2025 a eu lieu hier et une chose est claire: l\'I...',
            subtitleText: 'Congratulations Antoine',
            timeAgo: '32 min',
            isNew: true,
            isOnline: true,
          ),
        ],
      ),
    );
  }
}

// class NotifScreen extends StatelessWidget {
class NotificationCard extends StatelessWidget {
  final String imageUrl; // Asset ou réseau
  final String
  titleText; // Ex: "Eben-ezer Komi EGBADODJI a commenté le post de YASSINE RAFIK"
  final String? subtitleText; // Ex: "Congratulations Yassine"
  final String timeAgo; // Ex: "2 min"
  final bool isNew; // Fond bleu clair
  final bool isOnline; // petit badge vert

  const NotificationCard({
    super.key,
    required this.imageUrl,
    required this.titleText,
    this.subtitleText,
    required this.timeAgo,
    this.isNew = false,
    this.isOnline = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: isNew ? Color(0xFFE8F4FD) : Colors.white,
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              CircleAvatar(
                radius: 22,
                backgroundImage:
                    imageUrl.startsWith('http')
                        ? NetworkImage(imageUrl)
                        : AssetImage(imageUrl) as ImageProvider,
              ),
              if (isOnline)
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 1.5),
                    ),
                  ),
                ),
            ],
          ),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text.rich(
                  TextSpan(
                    text: titleText,
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                  ),
                ),
                if (subtitleText != null)
                  Padding(
                    padding: const EdgeInsets.only(top: 2.0),
                    child: Text(
                      subtitleText!,
                      style: TextStyle(fontSize: 13, color: Colors.grey[700]),
                    ),
                  ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(timeAgo, style: TextStyle(fontSize: 12, color: Colors.grey)),
              Icon(Icons.more_horiz, size: 20, color: Colors.grey[600]),
            ],
          ),
        ],
      ),
    );
  }
}
