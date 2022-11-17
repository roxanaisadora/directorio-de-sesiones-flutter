import 'package:flutter/material.dart';
import 'package:sesion_03/pages/reto02/screens/pagetiktok.dart';
import 'package:sesion_03/pages/retos/retoui.dart';
import 'package:sesion_03/pages/sesion_03/home.dart';
import 'package:sesion_03/pages/sesion_04/inicio04.dart';
import 'package:sesion_03/pages/sesion_07/screens/scroll07.dart';
import 'package:sesion_03/pages/sesion_07/screens/sreen07.dart';
import 'buttonWidget.dart';
import 'pages/sesion_05/home05.dart';
import 'pages/sesion_06/screen/home06.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sesiones de la unidad 02'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 35, 5, 85).withOpacity(0.8)
        ),
        body: CustomScrollView(
          slivers: [
            SliverFillRemaining(
            hasScrollBody: false,
              child: Padding(
          padding: const EdgeInsets.all(40.0),
          child:Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
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
            ButtonWidget(
              text:'sesion 06',
              onPressed:(){
                Navigator.push(context, MaterialPageRoute(
                  builder: (context)=> const Home06(),
                  ),);
              },
            ),
            ButtonWidget(
              text:'sesion 07',
              onPressed:(){
                Navigator.push(context, MaterialPageRoute(
                  builder: (context)=> const ScrollScrean07activity(),
                  ),);
              },
            ),
            ButtonWidget(
              text:'scroll 07 maravillas',
              onPressed:(){
                Navigator.push(context, MaterialPageRoute(
                  builder: (context)=> const ScrollScrean07(),
                  ),);
              },
            ),
            ButtonWidget(
              text:'Reto 1',
              onPressed:(){
                Navigator.push(context, MaterialPageRoute(
                  builder: (context)=> const ChallengeWidget(),
                  ),);
              },
            ),
            ButtonWidget(
              text:'Reto 2',
              onPressed:(){
                Navigator.push(context, MaterialPageRoute(
                  builder: (context)=> const ScrollTiktok(),
                  ),);
              },
            ),
          ]),
          ))])
        
        
        
    );
  }
}