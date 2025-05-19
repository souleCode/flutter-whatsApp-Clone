import 'package:flutter/material.dart';
import 'package:linkedin_clone/pages/appbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            buildPostCard(
              avatarUrl: 'https://randomuser.me/api/portraits/men/1.jpg',
              username: 'Abdel-Hazim Lawani',
              subtitle: 'Je développe des solutions IA prêtes à...',
              timeInfo: '8 h • Modifié • ',
              content:
                  'Je n\'utilise plus les modèles d\'OpenAI pour intégrer de nouvelles features...',
              likeCount: '11',
              commentCount: '1 commentaire',
            ),
            buildPostCard(
              avatarUrl: 'https://randomuser.me/api/portraits/men/10.jpg',
              username: 'Abdel-Hazim Lawani',
              subtitle: 'Je développe des solutions IA prêtes à...',
              timeInfo: '8 h • Modifié • ',
              content:
                  'Je n\'utilise plus les modèles d\'OpenAI pour intégrer de nouvelles features...',
              likeCount: '11',
              commentCount: '1 commentaire',
            ),
            buildPostCard(
              avatarUrl: 'https://randomuser.me/api/portraits/men/8.jpg',
              username: 'Abdel-Hazim Lawani',
              subtitle: 'Je développe des solutions IA prêtes à...',
              timeInfo: '8 h • Modifié • ',
              content:
                  'Je n\'utilise plus les modèles d\'OpenAI pour intégrer de nouvelles features...',
              likeCount: '11',
              commentCount: '1 commentaire',
            ),
            buildPostCard(
              avatarUrl: 'https://randomuser.me/api/portraits/men/3.jpg',
              username: 'Abdel-Hazim Lawani',
              subtitle: 'Je développe des solutions IA prêtes à...',
              timeInfo: '8 h • Modifié • ',
              content:
                  'Je n\'utilise plus les modèles d\'OpenAI pour intégrer de nouvelles features...',
              likeCount: '11',
              commentCount: '1 commentaire',
            ),
            buildPostCard(
              avatarUrl: 'https://randomuser.me/api/portraits/men/2.jpg',
              username: 'Abdel-Hazim Lawani',
              subtitle: 'Je développe des solutions IA prêtes à...',
              timeInfo: '8 h • Modifié • ',
              content:
                  'Je n\'utilise plus les modèles d\'OpenAI pour intégrer de nouvelles features...',
              likeCount: '11',
              commentCount: '1 commentaire',
            ),
            buildPostCard(
              avatarUrl: 'https://randomuser.me/api/portraits/men/3.jpg',
              username: 'Abdel-Hazim Lawani',
              subtitle: 'Je développe des solutions IA prêtes à...',
              timeInfo: '8 h • Modifié • ',
              content:
                  'Je n\'utilise plus les modèles d\'OpenAI pour intégrer de nouvelles features...',
              likeCount: '11',
              commentCount: '1 commentaire',
            ),
            buildPostCard(
              avatarUrl: 'https://randomuser.me/api/portraits/men/13.jpg',
              username: 'Abdel-Hazim Lawani',
              subtitle: 'Je développe des solutions IA prêtes à...',
              timeInfo: '8 h • Modifié • ',
              content:
                  'Je n\'utilise plus les modèles d\'OpenAI pour intégrer de nouvelles features...',
              likeCount: '11',
              commentCount: '1 commentaire',
            ),
            buildPostCard(
              avatarUrl: 'https://randomuser.me/api/portraits/men/17.jpg',
              username: 'Abdel-Hazim Lawani',
              subtitle: 'Je développe des solutions IA prêtes à...',
              timeInfo: '8 h • Modifié • ',
              content:
                  'Je n\'utilise plus les modèles d\'OpenAI pour intégrer de nouvelles features...',
              likeCount: '11',
              commentCount: '1 commentaire',
            ),
            buildPostCard(
              avatarUrl: 'https://randomuser.me/api/portraits/men/11.jpg',
              username: 'Abdel-Hazim Lawani',
              subtitle: 'Je développe des solutions IA prêtes à...',
              timeInfo: '8 h • Modifié • ',
              content:
                  'Je n\'utilise plus les modèles d\'OpenAI pour intégrer de nouvelles features...',
              likeCount: '11',
              commentCount: '1 commentaire',
            ),
            buildPostCard(
              avatarUrl: 'https://randomuser.me/api/portraits/men/17.jpg',
              username: 'Abdel-Hazim Lawani',
              subtitle: 'Je développe des solutions IA prêtes à...',
              timeInfo: '8 h • Modifié • ',
              content:
                  'Je n\'utilise plus les modèles d\'OpenAI pour intégrer de nouvelles features...',
              likeCount: '11',
              commentCount: '1 commentaire',
            ),
            buildPostCard(
              avatarUrl: 'https://randomuser.me/api/portraits/men/13.jpg',
              username: 'Abdel-Hazim Lawani',
              subtitle: 'Je développe des solutions IA prêtes à...',
              timeInfo: '8 h • Modifié • ',
              content:
                  'Je n\'utilise plus les modèles d\'OpenAI pour intégrer de nouvelles features...',
              likeCount: '11',
              commentCount: '1 commentaire',
            ),
            buildPostCard(
              avatarUrl: 'https://randomuser.me/api/portraits/men/12.jpg',
              username: 'Abdel-Hazim Lawani',
              subtitle: 'Je développe des solutions IA prêtes à...',
              timeInfo: '8 h • Modifié • ',
              content:
                  'Je n\'utilise plus les modèles d\'OpenAI pour intégrer de nouvelles features...',
              likeCount: '11',
              commentCount: '1 commentaire',
            ),
            buildPostCard(
              avatarUrl: 'https://randomuser.me/api/portraits/men/10.jpg',
              username: 'Abdel-Hazim Lawani',
              subtitle: 'Je développe des solutions IA prêtes à...',
              timeInfo: '8 h • Modifié • ',
              content:
                  'Je n\'utilise plus les modèles d\'OpenAI pour intégrer de nouvelles features...',
              likeCount: '11',
              commentCount: '1 commentaire',
            ),
            buildPostCard(
              avatarUrl: 'https://randomuser.me/api/portraits/men/15.jpg',
              username: 'Abdel-Hazim Lawani',
              subtitle: 'Je développe des solutions IA prêtes à...',
              timeInfo: '8 h • Modifié • ',
              content:
                  'Je n\'utilise plus les modèles d\'OpenAI pour intégrer de nouvelles features...',
              likeCount: '11',
              commentCount: '1 commentaire',
            ),
            _buildSponsoredCard(),
          ],
        ),
      ),
    );
  }

  ///*
  Widget buildPostCard({
    required String avatarUrl,
    required String username,
    required String subtitle,
    required String timeInfo,
    required String content,
    required String likeCount,
    required String commentCount,
  }) {
    return Card(
      margin: const EdgeInsets.all(8),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(avatarUrl),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        username,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(subtitle, style: const TextStyle(fontSize: 12)),
                      Row(
                        children: [
                          Text(
                            timeInfo,
                            style: const TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                          const Icon(
                            Icons.emoji_emotions,
                            size: 14,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: const Text(
                    '+ Suivre',
                    style: TextStyle(color: Colors.blue),
                  ),
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Colors.blue),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Text(content, style: const TextStyle(fontSize: 14)),
            const SizedBox(height: 8),
            const Text('... plus', style: TextStyle(color: Colors.grey)),
            const SizedBox(height: 16),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ReactionCount(icon: Icons.thumb_up, text: likeCount),
                const SizedBox(width: 200),
                ReactionCount(icon: Icons.comment, text: commentCount),
              ],
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ActionButton(
                  icon: Icons.thumb_up_outlined,
                  label: 'J\'aime',
                  onPressed: () {},
                ),
                ActionButton(
                  icon: Icons.mode_comment_outlined,
                  label: 'Commenter',
                  onPressed: () {},
                ),
                ActionButton(
                  icon: Icons.repeat,
                  label: 'Republier',
                  onPressed: () {},
                ),
                ActionButton(
                  icon: Icons.send_outlined,
                  label: 'Envoyer',
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSponsoredCard() {
    return Card(
      margin: EdgeInsets.all(8),
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.linked_camera, color: Colors.blue, size: 16),
                SizedBox(width: 4),
                Text(
                  'LinkedIn',
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
                Spacer(),
                Text(
                  'Post sponsorisé',
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
              ],
            ),
            SizedBox(height: 8),
            Text(
              'Premium has helped 3.2 million members land a job in the past year. Access exclusive tools to help your job ...',
              style: TextStyle(fontSize: 14),
            ),
            SizedBox(height: 8),
            Text('plus', style: TextStyle(color: Colors.grey)),
          ],
        ),
      ),
    );
  }
}

class ActionButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onPressed;

  const ActionButton({
    required this.icon,
    required this.label,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          icon: Icon(icon, color: Colors.grey[600]),
          onPressed: onPressed,
          padding: EdgeInsets.zero,
          constraints: BoxConstraints(),
          iconSize: 24,
        ),
        Text(label, style: TextStyle(color: Colors.grey[600], fontSize: 12)),
      ],
    );
  }
}

class ReactionCount extends StatelessWidget {
  final IconData? icon;
  final String text;

  const ReactionCount({this.icon, required this.text, Key? key})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (icon != null) Icon(icon, size: 16, color: Colors.grey[600]),
        if (icon != null) SizedBox(width: 4),
        Text(text, style: TextStyle(color: Colors.grey[600], fontSize: 14)),
      ],
    );
  }
}
