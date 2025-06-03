import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Solde send&pay
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [BoxShadow(color: Colors.grey.shade200, blurRadius: 8)],
              ),
              child: Row(
                children: [
                  Icon(Icons.account_balance_wallet, color: Colors.blue, size: 28),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("Solde PayPal", style: TextStyle(fontSize: 14, color: Colors.grey)),
                      Text("0,00 €", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // Paiement en 4x
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  Icon(Icons.shopping_cart_checkout, color: Colors.blue, size: 28),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("Back Market • Paiement en 4X", style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(height: 4),
                      Text("Prochaine échéance : 34,12 EUR le 25 juin"),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),

            // Contacts récents
            const Text("Renvoyer", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 12),
            SizedBox(
              height: 80,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _contactAvatar("Rayan", "https://randomuser.me/api/portraits/men/1.jpg"),
                  _contactAvatar("Orphée", "https://randomuser.me/api/portraits/women/2.jpg"),
                  _contactAvatar("Chloé", "https://randomuser.me/api/portraits/women/3.jpg"),
                  _contactAvatar("Hugues", "https://randomuser.me/api/portraits/men/4.jpg"),
                ],
              ),
            ),
            const SizedBox(height: 30),

            // Envoyer de l’argent à l’étranger
            const Text("Envoyer de l'argent à l'étranger", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 12),
            Wrap(
              spacing: 12,
              runSpacing: 12,
              children: [
                _actionButton(Icons.house, "Virement bancaire"),
                _actionButton(Icons.money, "Retrait d'espèces"),
                _actionButton(Icons.account_balance_wallet, "Argent mobile"),
                _actionButton(Icons.phone_android, "Recharge téléphonique"),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _contactAvatar(String name, String imageUrl) {
    return Column(
      children: [
        CircleAvatar(radius: 26, backgroundImage: NetworkImage(imageUrl)),
        const SizedBox(height: 6),
        Text(name, style: const TextStyle(fontSize: 12)),
      ],
    );
  }

  Widget _actionButton(IconData icon, String label) {
    return SizedBox(
      width: 150,
      child: ElevatedButton.icon(
        onPressed: () {},
        icon: Icon(icon, size: 20),
        label: Text(label, style: const TextStyle(fontSize: 14)),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black87,
          elevation: 1,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
      ),
    );
  }
}
