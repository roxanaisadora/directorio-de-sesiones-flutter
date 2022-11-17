
import 'package:flutter/material.dart';
import 'package:sesion_03/pages/sesion_08/screeans/instagram/page01.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NavigationScreanInstagram extends StatefulWidget {
  const NavigationScreanInstagram({super.key});

  @override
  State<NavigationScreanInstagram> createState() => _NavigationScreanInstagramState();
}

class _NavigationScreanInstagramState extends State<NavigationScreanInstagram> {
  int _selectedIndex = 0;

  static const List<Widget> _widegtOptions = [
    HomePage01Insta(),
    Text('1'),
    Text('2'),
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
        backgroundColor: Colors.black,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.white,
        items:[
          const BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.house, color: Colors.white), label: ''),
          const BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.searchengin, color: Colors.white), label: ''),
          BottomNavigationBarItem(icon: Image.asset('assets/reels.png', width: 30,height: 30,), label: ''),
          const BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.bagShopping, color: Colors.white), label: ''),
          BottomNavigationBarItem(icon: Container(
                              decoration:  BoxDecoration(
                              border: Border.all(width: 1, color: Colors.white),
                              borderRadius: BorderRadius.circular(100),),
                              child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child:Image.network(
                      'https://cdn.pixabay.com/photo/2015/11/26/00/14/woman-1063100_960_720.jpg',
                      width: 30,
                      height: 30,
                      fit:BoxFit.fill  
                      ) ,
                      ),
                            ), label: ''),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}