
import 'package:flutter/material.dart';
import 'package:sesion_03/pages/sesion_08/screeans/scroll/bandeja.page.dart';
import 'package:sesion_03/pages/sesion_08/screeans/scroll/page1.dart';
import 'package:sesion_03/pages/sesion_08/screeans/scroll/pagefriend.dart';

class NavigationScrean extends StatefulWidget {
  const NavigationScrean({super.key});

  @override
  State<NavigationScrean> createState() => _NavigationScreanState();
}

class _NavigationScreanState extends State<NavigationScrean> {
  int _selectedIndex = 0;

  static const List<Widget> _widegtOptions = [
    HomePage01Tik(),
    FriendPage(),
    BandejaPage(),
    Text('4'),
    Text('5'),
  ];

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widegtOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: 'Amigos'),
          BottomNavigationBarItem(icon: Icon(Icons.tiktok), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Bandeja de entrada'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil'),
        ],
        backgroundColor: Colors.black,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.white,
      ),
    );
  }
}