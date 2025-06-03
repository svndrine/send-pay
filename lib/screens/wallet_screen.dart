import 'package:flutter/material.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.build_rounded, size: 80, color: Colors.grey),
            SizedBox(height: 20),
            Text(
              "Page portefeuille en construction",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 8),
            Text(
              "Revenez plus tard 😉",
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
