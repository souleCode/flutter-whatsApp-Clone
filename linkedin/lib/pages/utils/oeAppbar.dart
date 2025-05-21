import 'package:flutter/material.dart';

class OffreAppBar extends StatelessWidget implements PreferredSizeWidget {
  const OffreAppBar({super.key});
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,

      elevation: 0,
      title: Row(
        children: [
          // Photo de profil
          CircleAvatar(
            backgroundImage: AssetImage(
              'assets/images/souley.jpg',
            ), // Remplace par NetworkImage si besoin
            radius: 20,
          ),
          const SizedBox(width: 10),

          // Barre de recherche simulée
          Expanded(
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(5),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 12),
              alignment: Alignment.center,
              child: TextField(
                decoration: InputDecoration(
                  icon: const Icon(
                    Icons.work_outline,
                    color: Color.fromARGB(255, 28, 25, 25),
                  ),
                  hintText: "Recherche une offre ...",
                  hintStyle: const TextStyle(
                    color: Color.fromARGB(255, 27, 23, 23),
                  ),
                  border: InputBorder.none,
                ),
                style: const TextStyle(color: Colors.black),
              ),
            ),
          ),
          const SizedBox(width: 10),
          const Icon(Icons.message, color: Color.fromARGB(255, 14, 12, 12)),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
