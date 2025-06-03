import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  BottomNavBar({required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Accueil'),
        BottomNavigationBarItem(icon: Icon(Icons.swap_vert), label: 'Envoyer/Demander'),
        BottomNavigationBarItem(icon: Icon(Icons.account_balance_wallet), label: 'Portefeuille'),
        BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Menu'),
      ],
    );
  }
}
