

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sesion_03/main.dart';
import 'package:sesion_03/pages/sesion_06/widgets/custombuttonw.dart';
import 'package:sesion_03/pages/sesion_06/widgets/materialbuttonw.dart';

class Home06 extends StatefulWidget {
  const Home06({super.key});

  @override
  State<Home06> createState() => _Home06State();
}

class _Home06State extends State<Home06> {
  int numero = 0;

  void incrementarNum(){
    setState(() {
      numero++;
    }); 
  }

  void disminuirNum(){
    setState(() {
      numero--;
    }); 
  }

  void resetNum(){
    setState(() {
      numero=0;
    }); 
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 213, 129, 216).withOpacity(0.8),
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
      backgroundColor: const Color.fromARGB(255, 35, 5, 85).withOpacity(0.8)
      ),
      body: CustomScrollView(
          slivers: [
            SliverFillRemaining(
            hasScrollBody: false,
              child: Column(
                children: <Widget>[
                  const SizedBox(height: 30,),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child:Image.asset(
                      'assets/foto.jpg',
                      width: 150,
                      height: 150,
                      fit:BoxFit.fill  
                    ) ,
                    ),
                    const SizedBox(height: 20,),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          ),
                      child: Padding(padding: const EdgeInsets.only(top: 15, left: 25, right: 25, bottom: 10) ,
                      child:Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Nombre: Roxana Garcia Aviles', textDirection: TextDirection.ltr, style:GoogleFonts.indieFlower(fontSize: 24, fontWeight: FontWeight.bold)),
                          const SizedBox(height: 20,),
                          Text('Edad:29', textDirection: TextDirection.ltr, style:GoogleFonts.indieFlower(fontSize: 20, fontWeight: FontWeight.bold)),
                          const SizedBox(height: 20,),
                          Text('País: Perú', textDirection: TextDirection.ltr, style:GoogleFonts.indieFlower(fontSize: 20, fontWeight: FontWeight.bold)),
                        ],
                    ),
                    )
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Expanded(child: Column(children: [
                    Text('Contador', style:GoogleFonts.lobster(fontSize: 38)),
                    Text('$numero', style:GoogleFonts.pacifico(fontSize: 60)),
                    const SizedBox(height: 10,),
                    SizedBox(
                      child: MaterialButtonWidget(
                        aumentarB:()=> incrementarNum(),
                        disminuirB:()=> disminuirNum(),
                        resetB:()=> resetNum(), ),
                    )
                  ],
                  )),
                  const SizedBox(height: 20,),
                ],
              ),
            ),
          ],
        )
      
      //floatingActionButton: CustomButtonWidget(
      //  aumentarB:()=> incrementarNum(),
      //  disminuirB:()=> disminuirNum(),
      //  resetB:()=> resetNum(),
      //),
    );
  }
}

