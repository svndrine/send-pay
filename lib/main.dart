import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/send_request_screen.dart';
import 'screens/wallet_screen.dart';
import 'screens/menu_screen.dart';
import 'widgets/bottom_nav_bar.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: const SendAndPayApp(),
  // Ajoutez ce thème pour forcer la couleur blanche
  theme: ThemeData(
    primarySwatch: Colors.blue,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey,
      type: BottomNavigationBarType.fixed,
    ),
  ),
));

class SendAndPayApp extends StatefulWidget {
  const SendAndPayApp({super.key});

  @override
  _SendAndPayAppState createState() => _SendAndPayAppState();
}

class _SendAndPayAppState extends State<SendAndPayApp> {
  int _selectedIndex = 0;

  final List<Widget> _screens = const [
    HomeScreen(),
    SendRequestScreen(),
    WalletScreen(),
    //MenuScreen(),
  ];

  void _onTabTapped(int index) {
    setState(() => _selectedIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavBar(
        currentIndex: _selectedIndex,
        onTap: _onTabTapped,
      ),
    );
  }
}