import 'package:flutter/material.dart';
import 'package:linkedin/pages/appbar.dart';

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
              username: 'OUEDRAOGO Moussa',
              subtitle: 'Specialiste En Aide à la Decision',
              timeInfo: '8 h • ',
              imageUrl:
                  'https://images.unsplash.com/photo-1551288049-bebda4e38f71?ixlib=rb-4.0.3&auto=format&fit=crop&w=1000&q=80',
              content:
                  'Nouveau projet Data Analysis: Dans ce projet j\'ai eu a developper un tableau de bord moderne.....',
              likeCount: '1k',
              commentCount: '89 commentaires',
            ),
            buildPostCard(
              avatarUrl: 'https://randomuser.me/api/portraits/men/10.jpg',
              username: 'OUATTARA Oumar',
              subtitle: 'Conferencier en AI et Digitalisation des Processus...',
              timeInfo: '2 sem •  ',
              content:
                  " J'ai animé il ya deux jours une Conference autour du theme: Transformation Digitale pour une industrialisation accelérée en Afrique..",
              likeCount: '125',
              imageUrl:
                  'https://images.unsplash.com/photo-1522071820081-009f0129c71c?ixlib=rb-4.0.3&auto=format&fit=crop&w=1000&q=80',
              commentCount: '75 commentaire',
            ),
            buildPostCard(
              avatarUrl: 'https://randomuser.me/api/portraits/men/8.jpg',
              username: 'DIAZ Adboul Wahid',
              subtitle: 'Developpeur logiciel',
              timeInfo: '4 h •  ',
              content:
                  'Quels outils choisi en 2025 pour le developpement logiciel?...',
              likeCount: '25k',
              commentCount: '18.5k',
            ),
            buildPostCard(
              avatarUrl: 'https://randomuser.me/api/portraits/men/3.jpg',
              username: 'KHOULOUD Salam',
              subtitle: 'Associate Data Engineer chez JESA',
              timeInfo: '2 min •  ',
              content: 'Comment mettre en place un Pipeline Robuste?...',
              likeCount: '15',
              commentCount: '9',
            ),
            buildPostCard(
              avatarUrl: 'https://randomuser.me/api/portraits/men/2.jpg',
              username: 'Abdel-Hazim Lawani',
              subtitle: 'Je développe des solutions IA prêtes à...',
              timeInfo: '8 h • Modifié • ',
              imageUrl:
                  "https://images.unsplash.com/photo-1517694712202-14dd9538aa97?ixlib=rb-4.0.3&auto=format&fit=crop&w=1000&q=80",
              content:
                  'Je n\'utilise plus les modèles d\'OpenAI pour intégrer de nouvelles features...',
              likeCount: '11',
              commentCount: '1 commentaire',
            ),
            buildPostCard(
              avatarUrl: '',
              username: 'MDPI',
              subtitle: '73180 abonnés ',
              timeInfo: 'Post sponsorisé',
              content:
                  "MDPI est un éditeur de revues scientifiques en libre accès qui impose des frais de publication. MDPI publie plus de 430 revues couvrant une grande variété de champs scientifiques, et lance environ dix nouvelles revues chaque..",

              likeCount: '15.6k',
              commentCount: '14k',
            ),
            buildPostCard(
              avatarUrl: 'https://randomuser.me/api/portraits/men/13.jpg',
              username: 'Dr.-Hamza',
              subtitle: 'Architecte des systemes logiciels',
              timeInfo: '3 j •  ',
              content: 'Le developpement logiciel: Bonne Pratiques:...',
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
              imageUrl:
                  'https://images.unsplash.com/photo-1563986768609-322da13575f3?ixlib=rb-4.0.3&auto=format&fit=crop&w=1000&q=80',
              content:
                  'Je n\'utilise plus les modèles d\'OpenAI pour intégrer de nouvelles features...',
              likeCount: '11',
              commentCount: '1 commentaire',
            ),
            buildPostCard(
              avatarUrl: 'https://randomuser.me/api/portraits/men/15.jpg',
              username: 'KABORE Awa',
              subtitle: 'Eleve Ingenieur en IA/Data Science',
              timeInfo: '8 h • Modifié • ',
              imageUrl:
                  'https://images.unsplash.com/photo-1547658719-da2b51169166?ixlib=rb-4.0.3&auto=format&fit=crop&w=1000&q=80',
              content:
                  'Je n\'utilise plus les modèles d\'OpenAI pour intégrer de nouvelles features...',
              likeCount: '11',
              commentCount: '1 commentaire',
            ),
            buildPostCard(
              avatarUrl: 'https://randomuser.me/api/portraits/men/1.jpg',
              username: 'Jean Dupont',
              subtitle: 'Développeur Flutter chez TechCorp',
              timeInfo: '2 h • ',
              content:
                  'Je partage avec vous cette magnifique vue de Paris que j\'ai prise ce matin depuis la Tour Eiffel. Quel beau temps pour coder en plein air ! 🚀 #flutter #paris',
              likeCount: '24',
              commentCount: '5',
              imageUrl:
                  'https://images.unsplash.com/photo-1517694712202-14dd9538aa97?ixlib=rb-4.0.3&auto=format&fit=crop&w=1000&q=80',
            ),
            buildPostCard(
              avatarUrl: 'https://randomuser.me/api/portraits/men/1.jpg',
              username: 'Jean Dupont',
              subtitle: 'Développeur Flutter chez TechCorp',
              timeInfo: '2 h • ',
              content:
                  'Je partage avec vous cette magnifique vue de Paris que j\'ai prise ce matin depuis la Tour Eiffel. Quel beau temps pour coder en plein air ! 🚀 #flutter #paris',
              likeCount: '24',
              commentCount: '5',
              imageUrl:
                  'https://images.unsplash.com/photo-1502602898657-3e91760cbb34?ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80',
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
    String? imageUrl,
    String? pdfUrl,
    String? videoUrl,
  }) {
    return Card(
      margin: const EdgeInsets.all(8),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // En-tête (inchangé)
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
                  child: Text('+ Suivre', style: TextStyle(color: Colors.blue)),
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

            // Contenu textuel
            Text(content, style: const TextStyle(fontSize: 14)),
            const SizedBox(height: 8),
            const Text('... plus', style: TextStyle(color: Colors.grey)),
            const SizedBox(height: 16),

            // Section multimédia avec gestion d'erreur
            if (imageUrl != null)
              Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    imageUrl,
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: 200,
                    errorBuilder:
                        (context, error, stackTrace) => Container(
                          height: 200,
                          color: Colors.grey[200],
                          child: const Icon(
                            Icons.broken_image,
                            color: Colors.grey,
                          ),
                        ),
                    loadingBuilder: (context, child, loadingProgress) {
                      if (loadingProgress == null) return child;
                      return Container(
                        height: 200,
                        color: Colors.grey[200],
                        child: Center(
                          child: CircularProgressIndicator(
                            value:
                                loadingProgress.expectedTotalBytes != null
                                    ? loadingProgress.cumulativeBytesLoaded /
                                        loadingProgress.expectedTotalBytes!
                                    : null,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),

            if (pdfUrl != null)
              Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: InkWell(
                  onTap: () {
                    // Implémentez l'ouverture du PDF
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: const EdgeInsets.all(12),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.picture_as_pdf,
                          color: Colors.red,
                          size: 40,
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Document PDF',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                pdfUrl.split('/').last,
                                style: const TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                        const Icon(Icons.download, color: Colors.blue),
                      ],
                    ),
                  ),
                ),
              ),

            if (videoUrl != null)
              Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: AspectRatio(
                  aspectRatio: 16 / 9,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        // Placeholder pour la vidéo
                        Container(color: Colors.grey[200]),
                        Center(
                          child: IconButton(
                            icon: const Icon(
                              Icons.play_circle_filled,
                              size: 50,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              // Implémentez la lecture vidéo
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

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
                ReactionButton(
                  onReactionSelected: (reaction) {
                    // Gérer la réaction sélectionnée
                    // print('Réaction choisie: $reaction');
                  },
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

  //
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
  final Color? color;

  const ActionButton({
    required this.icon,
    required this.label,
    required this.onPressed,
    this.color,
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

//
class ReactionButton extends StatefulWidget {
  final Function(ReactionType)? onReactionSelected;

  const ReactionButton({super.key, this.onReactionSelected});

  @override
  State<ReactionButton> createState() => _ReactionButtonState();
}

class _ReactionButtonState extends State<ReactionButton> {
  bool _isLiked = false;
  Offset _tapPosition = Offset.zero;

  Future<void> _showReactionMenu(BuildContext context) async {
    final RenderBox overlay =
        Overlay.of(context).context.findRenderObject() as RenderBox;

    final ReactionType? selectedReaction = await showMenu<ReactionType>(
      context: context,
      position: RelativeRect.fromRect(
        Rect.fromLTWH(_tapPosition.dx, _tapPosition.dy - 100, 40, 40),
        Offset.zero & overlay.size,
      ),
      items: [
        PopupMenuItem(
          value: ReactionType.like,
          child: Row(
            children: [
              Icon(Icons.thumb_up, color: Colors.blue),
              SizedBox(width: 8),
              Text('J\'aime'),
            ],
          ),
        ),
        PopupMenuItem(
          value: ReactionType.love,
          child: Row(
            children: [
              Icon(Icons.favorite, color: Colors.red),
              SizedBox(width: 8),
              Text('Adore'),
            ],
          ),
        ),
        PopupMenuItem(
          value: ReactionType.haha,
          child: Row(
            children: [
              Icon(Icons.emoji_emotions, color: Colors.amber),
              SizedBox(width: 8),
              Text('Drole'),
            ],
          ),
        ),
        PopupMenuItem(
          value: ReactionType.wow,
          child: Row(
            children: [
              Icon(Icons.emoji_emotions_outlined, color: Colors.yellow),
              SizedBox(width: 8),
              Text('Wow'),
            ],
          ),
        ),
      ],
    );

    if (selectedReaction != null) {
      setState(() {
        _isLiked = true;
      });
      widget.onReactionSelected?.call(selectedReaction);
    }
  }

  void _handleTapDown(TapDownDetails details) {
    _tapPosition = details.globalPosition;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isLiked = !_isLiked;
        });
        widget.onReactionSelected?.call(ReactionType.like);
      },
      onLongPress: () => _showReactionMenu(context),
      onTapDown: _handleTapDown,
      child: ActionButton(
        onPressed: () {
          setState(() {
            _isLiked = !_isLiked;
          });
          widget.onReactionSelected?.call(ReactionType.like);
        },
        icon: _isLiked ? Icons.thumb_up : Icons.thumb_up_outlined,
        label: _isLiked ? 'Aimé' : 'J\'aime',
        color: _isLiked ? Colors.blue : null,
      ),
    );
  }
}

enum ReactionType { like, love, haha, wow }
