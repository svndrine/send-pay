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

            // Boutons en bas
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text("Envoyer"),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {},
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

// Widget réutilisable pour afficher un contact
class _UserItem extends StatelessWidget {
  final String name;
  final String username;

  const _UserItem({required this.name, required this.username});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(child: Icon(Icons.person)),
      title: Text(name),
      subtitle: Text(username),
      trailing: const Icon(Icons.info_outline),
      onTap: () {
        // Action au clic (à définir)
      },
    );
  }
}
