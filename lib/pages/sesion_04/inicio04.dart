import 'package:flutter/material.dart';
import 'package:sesion_03/main.dart';
import 'package:sesion_03/buttonWidget.dart';
import 'package:sesion_03/pages/sesion_04/register.dart';
import 'package:sesion_03/pages/sesion_04/checkbox.dart';
import 'package:sesion_03/pages/sesion_04/scroll.dart';

import 'Dropdownbuttonformfiel.dart';
import 'EmailPassWidget.dart';
import 'SliderWidget.dart';

class Home04 extends StatelessWidget {
  const Home04({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: SizedBox(
            child: Image.network(
              'https://mir-s3-cdn-cf.behance.net/projects/404/c697f587154819.Y3JvcCwxMzc2LDEwNzcsMjY1LDA.png',
            )),
        elevation: 20,
        leading: IconButton(
          icon: const Icon(Icons.home),
          tooltip: 'Menu',
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
                  builder: (context)=> const MyApp(),
                  ),);
          },
        ),
      backgroundColor: const Color.fromARGB(255, 35, 5, 85).withOpacity(0.8)),
       body: Padding(
        padding: const EdgeInsets.all(10.0),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ButtonWidget(
              text:'Texfield',
              onPressed:(){
                Navigator.push(context, MaterialPageRoute(
                  builder: (context)=> const TextFormFieldWidget(),
                  ),);
              },
            ),
            ButtonWidget(
              text:'Email & Password',
              onPressed:(){
                Navigator.push(context, MaterialPageRoute(
                  builder: (context)=> const EmailPassWidget(),
                  ),);
              },
            ),
            ButtonWidget(
              text:'DrowDownButton',
              onPressed:(){
                Navigator.push(context, MaterialPageRoute(
                  builder: (context)=> const Dropdownbuttonformfiel(),
                  ),);
              },
            ),
            ButtonWidget(
              text:'Slider',
              onPressed:(){
                Navigator.push(context, MaterialPageRoute(
                  builder: (context)=> const SliderWidget(),
                  ),);
              },
            ),
            ButtonWidget(
              text:'checkbox',
              onPressed:(){
                Navigator.push(context, MaterialPageRoute(
                  builder: (context)=> const CheboxSwitchWidget(),
                  ),);
              },
            ),
            ButtonWidget(
              text:'scroll infiniti',
              onPressed:(){
                Navigator.push(context, MaterialPageRoute(
                  builder: (context)=> const ScrollWidget(),
                  ),);
              },
            ),
            ]
        ),
        )
       
    );
   
  }
}