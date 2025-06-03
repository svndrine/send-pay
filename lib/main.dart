import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/send_request_screen.dart';
import 'screens/wallet_screen.dart';
import 'screens/menu_screen.dart';
import 'widgets/bottom_nav_bar.dart';

void main() => runApp(SendAndPayApp());

class SendAndPayApp extends StatefulWidget {
  @override
  _SendAndPayAppState createState() => _SendAndPayAppState();
}

class _SendAndPayAppState extends State<SendAndPayApp> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    HomeScreen(),
    SendRequestScreen(),
    WalletScreen(),
    MenuScreen(),
  ];

  //Méthode pour changer d'onglet
  void _onTabTapped(int index) {
    setState(() => _selectedIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Send&Pay',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        body: _screens[_selectedIndex],
        bottomNavigationBar: BottomNavBar(currentIndex: _selectedIndex, onTap: _onTabTapped),
      ),
    );
  }
}
