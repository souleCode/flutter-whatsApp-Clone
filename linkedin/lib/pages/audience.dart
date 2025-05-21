import 'package:flutter/material.dart';

class AudienceSelector extends StatefulWidget {
  const AudienceSelector({super.key});

  @override
  State<AudienceSelector> createState() => _AudienceSelectorState();
}

class _AudienceSelectorState extends State<AudienceSelector> {
  String selectedOption = 'Tout le m...';

  void _showAudienceBottomSheet() {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (_) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 40,
                height: 4,
                margin: EdgeInsets.only(bottom: 16),
                decoration: BoxDecoration(
                  color: Colors.grey[400],
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              Text(
                "Qui peut voir votre post ?",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16),
              _buildOption(
                icon: Icons.public,
                title: "Tout le m...",
                subtitle: "Tout le monde sur l'app et en dehors",
              ),
              _buildOption(icon: Icons.people, title: "Vos relations..."),
              _buildOption(icon: Icons.group, title: "Groupe", hasArrow: true),
              Divider(height: 32),
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text(
                  "Commande des ...",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text("Tout le monde"),
                trailing: Icon(Icons.arrow_forward_ios, size: 16),
                onTap: () {},
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text(
                  "Partenariat de ...",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                trailing: Switch(value: false, onChanged: (val) {}),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildOption({
    required IconData icon,
    required String title,
    String? subtitle,
    bool hasArrow = false,
  }) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.grey[200],
        child: Icon(icon, color: Colors.black),
      ),
      title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
      subtitle: subtitle != null ? Text(subtitle) : null,
      trailing:
          hasArrow
              ? Icon(Icons.arrow_forward_ios, size: 16)
              : Radio<String>(
                value: title,
                groupValue: selectedOption,
                onChanged: (value) {
                  setState(() {
                    selectedOption = value!;
                    Navigator.pop(context);
                  });
                },
              ),
      onTap: () {
        if (!hasArrow) {
          setState(() {
            selectedOption = title;
            Navigator.pop(context);
          });
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _showAudienceBottomSheet,
      child: Row(
        children: [
          Text(selectedOption, style: TextStyle(color: Colors.black)),
          Icon(Icons.arrow_drop_down),
        ],
      ),
    );
  }
}
