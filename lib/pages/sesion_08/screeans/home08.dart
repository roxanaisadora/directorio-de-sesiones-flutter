import 'package:flutter/material.dart';
import 'package:sesion_03/buttonWidget.dart';
import 'package:sesion_03/pages/sesion_08/screeans/instagram/navigationinstagram.dart';
import 'package:sesion_03/pages/sesion_08/screeans/scroll/navigationscreen.dart';


class Home08 extends StatelessWidget {
  const Home08({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              text:'tiktok',
              onPressed:(){
                Navigator.push(context, MaterialPageRoute(
                  builder: (context)=> const NavigationScrean(),
                  ),);
              },
            ),
             ButtonWidget(
              text:'instagram',
              onPressed:(){
                Navigator.push(context, MaterialPageRoute(
                  builder: (context)=> const NavigationScreanInstagram(),
                  ),);
              },
            ),
            
          ]),
          ))])
        
        
        
    );
  }
}