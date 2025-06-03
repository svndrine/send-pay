import 'package:flutter/material.dart';

class SendRequestScreen extends StatelessWidget {
  const SendRequestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Envoyer et demander", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),

            // Barre de recherche
            TextField(
              decoration: InputDecoration(
                hintText: "Nom, nom d'utilisateur, adresse email...",
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            const SizedBox(height: 24),

            const Text("Suggestions", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 12),

            // Liste des suggestions
            Expanded(
              child: ListView(
                children: const [
                  _UserItem(name: "Rayan Khelfoun", username: "@rayukditleR"),
                  _UserItem(name: "Orphée Ebelebe", username: "@orpheb"),
                  _UserItem(name: "Chloé Fay", username: "@clolashess"),
                  _UserItem(name: "Hugues Moubangat", username: "@hugues"),
                  _UserItem(name: "By.sirabeauty", username: "@bysirabeauty"),
                  _UserItem(name: "Eugide Kapinga", username: "@brefsvp"),
                  _UserItem(name: "Axelle Ganongo", username: "@axelle"),
                  _UserItem(name: "Laila Echevin", username: "@laila"),
                ],
              ),
            ),

            const SizedBox(height: 16),

            // Boutons en bas
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue, //bg color
                      foregroundColor: Colors.white, //txt color
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Text("Envoyer"),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.blue, // 🔵 texte
                      side: const BorderSide(color: Colors.blue), // 🔵 bordure
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Text("Demander"),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _UserItem extends StatelessWidget {
  final String name;
  final String username;

  const _UserItem({required this.name, required this.username});

  String getInitials() {
    return name.isNotEmpty
        ? name.trim().split(' ').map((e) => e[0]).take(2).join()
        : '';
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 24,
        backgroundColor: Colors.blue.shade100,
        child: Text(
          getInitials(),
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.blue,
            fontSize: 16,
          ),
        ),
      ),
      title: Text(name, style: const TextStyle(fontWeight: FontWeight.w600)),
      subtitle: Text(username, style: const TextStyle(color: Colors.grey)),
      trailing: Icon(Icons.info_outline, color: Colors.grey.shade700),
      onTap: () {
        // Action à définir (naviguer, envoyer, etc.)
      },
    );
  }
}
