import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sesion_03/pages/retos/pages/page3.dart';

class ChallengeWidget02 extends StatelessWidget {
  const ChallengeWidget02({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  CustomScrollView(
          slivers: [
            SliverFillRemaining(
            hasScrollBody: false,
              child: Padding(padding:const EdgeInsets.only(top: 20, left: 25, right: 25, bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(height: 30,),
                  Row(
                    children: [
                      Text('2', textDirection: TextDirection.ltr, style:GoogleFonts.ubuntu(fontSize: 100, fontWeight: FontWeight.bold)),
                      Text('_____', textDirection: TextDirection.ltr, style:GoogleFonts.ubuntu(fontSize: 80, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  const SizedBox(height: 30,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Find your tour',
                      style: TextStyle(color: Colors.black, fontSize: 25)),
                      const SizedBox(height: 15,),
                      Text('Museum tours', textDirection: TextDirection.ltr, style:GoogleFonts.ubuntu(fontSize: 18)),
                      const SizedBox(height: 15,),
                      Text('Travel round America\'s  big hearted, musically influenced southern cities of America.', textDirection: TextDirection.ltr, style:GoogleFonts.ubuntu(fontSize: 15)),
                      const SizedBox(height: 15,),
                    ],
                  ),
                    Container(
                      height: 200,
                      color: Colors.blue,
                      child: Padding(padding:const EdgeInsets.all(20) ,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: const[
                              Icon(Icons.star, color: Colors.white,size: 30,),
                              Icon(Icons.star, color: Colors.white,size: 30,),
                              Icon(Icons.star, color: Colors.white,size: 30,),
                            ],
                          ),
                          const SizedBox(height: 15,),
                          Text('Museum tours', textDirection: TextDirection.ltr, style:GoogleFonts.ubuntu(fontSize: 18, color: Colors.white)),
                          const SizedBox(height: 18,),
                          Text('Travel round America\'s  big hearted, musically influenced southern cities of America.', textDirection: TextDirection.ltr, style:GoogleFonts.ubuntu(fontSize: 15, color: Colors.white)),
                          const SizedBox(height: 15,),
                            ],
                          ),
                          )
                        ) ,
                      const SizedBox(height: 30,),
                      Text('Museum tours', textDirection: TextDirection.ltr, style:GoogleFonts.ubuntu(fontSize: 18)),
                      const SizedBox(height: 15,),
                      Text('Travel round America\'s  big hearted, musically influenced southern cities of America.', textDirection: TextDirection.ltr, style:GoogleFonts.ubuntu(fontSize: 15)),
                      const SizedBox(height: 10,),
                      Expanded(child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                      MaterialButton(
                        shape: const CircleBorder(),
                        color: Colors.amber,
                        child:const Icon(Icons.chevron_right, size: 40,color: Colors.white,),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ChallengeWidget03()));
                        }),
                    ],
                  ),)
                ],
              ),
              )
              
              
            ),
          ],
        )

    );
  }
}

