import 'package:flutter/material.dart';
import 'package:sesion_03/menu.dart';



void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Bienvenido al curso de Flutter',
        theme:ThemeData.dark(
          useMaterial3: true
        ).copyWith(
          splashColor: Colors.transparent,
          hoverColor:  Colors.transparent,
          highlightColor:  Colors.transparent,
          primaryColor:  Colors.black,
          scaffoldBackgroundColor:  Colors.black
        ),
        home: const Menu());
  }
}
