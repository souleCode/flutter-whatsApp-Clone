import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mon Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mon Portfolio'),
        backgroundColor: Colors.blue[800],
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Section Profil
            Center(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundColor: Colors.blue[200],
                    child: Icon(
                      Icons.person,
                      size: 80,
                      color: Colors.blue[800],
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'SouleCode',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Développeur Mobile Flutter',
                    style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                  ),
                ],
              ),
            ),

            SizedBox(height: 32),

            // Section Navigation avec boutons
            Text(
              'Découvrir',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),

            // Grille responsive de boutons
            LayoutBuilder(
              builder: (context, constraints) {
                int crossAxisCount = constraints.maxWidth > 500 ? 2 : 1;
                return GridView.count(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  crossAxisCount: crossAxisCount,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: 3,
                  children: [
                    _buildNavigationCard(
                      context,
                      icon: Icons.code,
                      title: 'Mes Projets',
                      color: Colors.green,
                      onTap:
                          () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ProjectsPage(),
                            ),
                          ),
                    ),
                    _buildNavigationCard(
                      context,
                      icon: Icons.school,
                      title: 'Compétences',
                      color: Colors.orange,
                      onTap:
                          () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SkillsPage(),
                            ),
                          ),
                    ),
                    _buildNavigationCard(
                      context,
                      icon: Icons.email,
                      title: 'Contact',
                      color: Colors.purple,
                      onTap:
                          () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ContactPage(),
                            ),
                          ),
                    ),
                    _buildNavigationCard(
                      context,
                      icon: Icons.info,
                      title: 'À propos',
                      color: Colors.teal,
                      onTap:
                          () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AboutPage(),
                            ),
                          ),
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNavigationCard(
    BuildContext context, {
    required IconData icon,
    required String title,
    required Color color,
    required VoidCallback onTap,
  }) {
    return Card(
      elevation: 10,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(8),
        child: Container(
          padding: EdgeInsets.all(16),
          child: Row(
            children: [
              Icon(icon, color: color, size: 32),
              SizedBox(width: 16),
              Expanded(
                child: Text(
                  title,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ),
              Icon(Icons.arrow_forward_ios, color: Colors.grey),
            ],
          ),
        ),
      ),
    );
  }
}

class ProjectsPage extends StatelessWidget {
  final List<Map<String, String>> projects = [
    {
      'title': 'App E-commerce',
      'description': 'Application de vente en ligne avec panier',
      'tech': 'Flutter, Firebase',
    },
    {
      'title': 'Todo App',
      'description': 'Gestionnaire de tâches avec notifications',
      'tech': 'Flutter, SQLite',
    },
    {
      'title': 'Weather App',
      'description': 'Application météo avec géolocalisation',
      'tech': 'Flutter, API REST',
    },
    {
      'title': 'Money App',
      'description': 'Application de Transfert d\'argent entre pays.',
      'tech': 'Flutter, API REST, Cloud, FireBase',
    },
    // {
    //   'title': 'Entreprise App',
    //   'description': 'Application de gestion d\'entreprise ',
    //   'tech': 'Flutter, API REST',
    // },
    // {
    //   'title': 'School App',
    //   'description': 'Application complete de gestion scolaire',
    //   'tech': 'Flutter, API REST',
    // },
    // {
    //   'title': 'Restaurant App',
    //   'description': 'Application E-Restaurant avec Paiement et livraison',
    //   'tech': 'Flutter, API REST',
    // },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mes Projets'),
        backgroundColor: Colors.green[800],
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: projects.length,
        itemBuilder: (context, index) {
          final project = projects[index];
          return Card(
            margin: EdgeInsets.only(bottom: 16),
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    project['title']!,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(project['description']!),
                  SizedBox(height: 8),
                  Chip(
                    label: Text(project['tech']!),
                    backgroundColor: Colors.green[100],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class SkillsPage extends StatelessWidget {
  final List<Map<String, dynamic>> skills = [
    {'name': 'Flutter', 'level': 0.9},
    {'name': 'Dart', 'level': 0.85},
    {'name': 'Firebase', 'level': 0.7},
    {'name': 'Git', 'level': 0.8},
    {'name': 'UI/UX Design', 'level': 0.75},
    {'name': 'UI/UX Design', 'level': 0.75},
    {'name': 'UI/UX Design', 'level': 0.75},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Compétences'),
        backgroundColor: Colors.orange[800],
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              'Mes compétences techniques',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 24),
            Expanded(
              child: ListView.builder(
                itemCount: skills.length,
                itemBuilder: (context, index) {
                  final skill = skills[index];
                  return Card(
                    margin: EdgeInsets.only(bottom: 16),
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                skill['name'],
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text('${(skill['level'] * 100).toInt()}%'),
                            ],
                          ),
                          SizedBox(height: 8),
                          LinearProgressIndicator(
                            value: skill['level'],
                            backgroundColor: Colors.grey[300],
                            valueColor: AlwaysStoppedAnimation<Color>(
                              Colors.orange[600]!,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact'),
        backgroundColor: Colors.purple[800],
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              'Contactez-moi',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 32),
            _buildContactItem(
              icon: Icons.email,
              title: 'Email',
              subtitle: 'soulecode@email.com',
            ),
            _buildContactItem(
              icon: Icons.phone,
              title: 'Téléphone',
              subtitle: '+2120619944895',
            ),
            _buildContactItem(
              icon: Icons.location_on,
              title: 'Localisation',
              subtitle: 'Casablanca, Maroc',
            ),
            _buildContactItem(
              icon: Icons.language,
              title: 'LinkedIn',
              subtitle: 'linkedin.com/in/souleymanetraore',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContactItem({
    required IconData icon,
    required String title,
    required String subtitle,
  }) {
    return Card(
      margin: EdgeInsets.only(bottom: 16),
      child: ListTile(
        leading: Icon(icon, color: Colors.purple[600], size: 32),
        title: Text(title, style: TextStyle(fontWeight: FontWeight.w500)),
        subtitle: Text(subtitle),
      ),
    );
  }
}

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('À propos'),
        backgroundColor: Colors.teal[800],
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                'Mon parcours',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 24),
            Card(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  'Passionné par le développement mobile, je me spécialise dans Flutter depuis 2 ans. '
                  'J\'aime créer des applications intuitives et performantes qui apportent de la valeur aux utilisateurs.\n\n'
                  'Mon objectif est de continuer à apprendre et à maîtriser les dernières technologies '
                  'pour créer des expériences mobiles exceptionnelles.',
                  style: TextStyle(fontSize: 16, height: 1.5),
                ),
              ),
            ),
            SizedBox(height: 24),
            Text(
              'Centres d\'intérêt',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Wrap(
              spacing: 8,
              runSpacing: 10,
              children:
                  [
                        'Développement Mobile',
                        'Design UI/UX',
                        'Open Source',
                        'Intelligence Artificielle',
                        'Photographie',
                        'Voyages',
                        'Musique',
                      ]
                      .map(
                        (interest) => Chip(
                          label: Text(interest),
                          backgroundColor: Colors.teal[100],
                        ),
                      )
                      .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
