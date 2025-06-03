import 'package:flutter/material.dart';
import 'menu_drawer.dart';

// Liste des transactions fictives
final List<Map<String, dynamic>> transactions = [
  {
    'title': 'Paiement en 4X',
    'subtitle': '26 mai',
    'amount': '-34,12 €',
    'icon': Icons.storefront,
    'logoColor': Colors.blue
  },
  {
    'title': 'Back Market',
    'subtitle': '26 mai',
    'amount': '136,49 €',
    'icon': Icons.storefront,
    'logoColor': Colors.blue
  },
  {
    'title': 'Zazzle Ireland',
    'subtitle': '4 mai',
    'amount': '-70,72 €',
    'icon': Icons.storefront,
    'logoColor': Colors.blueGrey
  },
  {
    'title': 'Uber Payments BV',
    'subtitle': '23 avr.',
    'amount': '-2,58 €',
    'icon': Icons.directions_car,
    'logoColor': Colors.black
  },
];

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: MenuDrawer(), // ✅ Ajout du Drawer ici
      appBar: AppBar(
        title: const Text("Accueil"),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () => Scaffold.of(context).openDrawer(), // 👉 Ouvre le Drawer
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              const SizedBox(height: 20),

              // 💰 Solde
              Container(
                padding: const EdgeInsets.all(20),
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
                        Text("Solde", style: TextStyle(fontSize: 14, color: Colors.grey)),
                        Text("0,00 €", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              // 🛍 Paiement en 4x
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

              // 👥 Contacts récents
              const Text("Renvoyer", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 14),
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

              // 🌍 Envoyer de l'argent
              const Text("Envoyer de l'argent", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              Wrap(
                spacing: 30,
                runSpacing: 20,
                children: [
                  _actionButton(Icons.house, "Virement"),
                  _actionButton(Icons.money, "Retrait"),
                  _actionButton(Icons.account_balance_wallet, "Argent mobile"),
                  _actionButton(Icons.phone_android, "Recharge téléphonique"),
                ],
              ),

              const SizedBox(height: 40),

              // Historique des paiements
              const Text("Historique", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 16),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: transactions.length,
                itemBuilder: (context, index) {
                  final tx = transactions[index];
                  return ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 0, vertical: 8),
                    leading: CircleAvatar(
                      backgroundColor: tx['logoColor'],
                      child: Icon(tx['icon'], color: Colors.white),
                    ),
                    title: Text(tx['title'], style: const TextStyle(fontWeight: FontWeight.bold)),
                    subtitle: Text(tx['subtitle']),
                    trailing: Text(
                      tx['amount'],
                      style: TextStyle(
                        color: tx['amount'].startsWith('-') ? Colors.black : Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// 🔹 Contact
Widget _contactAvatar(String name, String imageUrl) {
  return Padding(
    padding: const EdgeInsets.only(right: 16),
    child: Column(
      children: [
        CircleAvatar(radius: 26, backgroundImage: NetworkImage(imageUrl)),
        const SizedBox(height: 6),
        Text(name, style: const TextStyle(fontSize: 12)),
      ],
    ),
  );
}

// 🔹 Boutons d'envoi d'argent
Widget _actionButton(IconData icon, String label) {
  return SizedBox(
    width: 180,
    child: ElevatedButton.icon(
      onPressed: () {},
      icon: Icon(icon, size: 25),
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
