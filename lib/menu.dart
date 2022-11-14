import 'package:flutter/material.dart';
import 'package:sesion_03/pages/sesion_03/home.dart';
import 'package:sesion_03/pages/sesion_04/inicio04.dart';
import 'buttonWidget.dart';
import 'pages/sesion_05/home05.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('sesiones'),
        centerTitle: true,
        elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child:Column(
          children: [
            ButtonWidget(
              text:'sesion 03',
              onPressed:(){
                Navigator.push(context, MaterialPageRoute(
                  builder: (context)=> const Home(),
                  ),);
              },
            ),
            ButtonWidget(
              text:'sesion 04',
              onPressed:(){
                Navigator.push(context, MaterialPageRoute(
                  builder: (context)=> const Home04(),
                  ),);
              },
            ),
            ButtonWidget(
              text:'sesion 05',
              onPressed:(){
                Navigator.push(context, MaterialPageRoute(
                  builder: (context)=> const Home05(),
                  ),);
              },
            ),
          ]),
          )
    );
  }
}