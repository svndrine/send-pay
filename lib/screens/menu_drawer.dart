import 'package:flutter/material.dart';

class MenuDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 16),
        children: [
          const SizedBox(height: 40),
          const Text("Menu", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          _buildSectionTitle("Acheter et économiser"),
          _buildMenuItem(Icons.emoji_events, "Récompenses"),
          _buildMenuItem(Icons.local_shipping, "Suivi de colis"),

          _buildSectionTitle("Gérer vos finances"),
          _buildMenuItem(Icons.payment, "Préférences de paiement"),
          _buildMenuItem(Icons.credit_card, "Cartes & comptes bancaires"),

          _buildSectionTitle("Envoyer et payer"),
          _buildMenuItem(Icons.send, "Envoyer à un compte"),
          _buildMenuItem(Icons.wallet, "Portefeuille mobile"),
          _buildMenuItem(Icons.account_balance, "Vers un compte bancaire"),
          _buildMenuItem(Icons.money, "Envoyer des espèces"),
          _buildMenuItem(Icons.phone_iphone, "Recharger un téléphone"),
          _buildMenuItem(Icons.receipt, "Payer des factures"),
          _buildMenuItem(Icons.qr_code, "QR code"),
          _buildMenuItem(Icons.favorite, "Faire un don"),

          _buildSectionTitle("Recevez des paiements"),
          _buildMenuItem(Icons.attach_money, "Demander de l'argent"),
          _buildMenuItem(Icons.qr_code_scanner, "QR code vendeur"),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 24, bottom: 8),
      child: Text(title, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
    );
  }

  Widget _buildMenuItem(IconData icon, String label) {
    return ListTile(
      leading: Icon(icon),
      title: Text(label),
      onTap: () {
        // Tu peux naviguer ici si besoin
      },
    );
  }
}
