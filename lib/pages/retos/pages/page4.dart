

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChallengeWidget04 extends StatelessWidget {
  const ChallengeWidget04({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  CustomScrollView(
          slivers: [
            SliverFillRemaining(
            hasScrollBody: false,
              child: Padding(padding:const EdgeInsets.only(top: 60, left: 25, right: 25, bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(height: 20,),
                  const Text('Contact us',
                      style: TextStyle(color: Color.fromARGB(255, 44, 47, 236), fontSize: 35, fontWeight: FontWeight.bold,)),
                  const SizedBox(height: 15,),
                  Text('Travel round America\'s  big hearted, musically influenced southern cities of America.', textDirection: TextDirection.ltr, style:GoogleFonts.ubuntu(fontSize: 15),textAlign:TextAlign.justify),
                  const SizedBox(height: 40,),
                    Container(
                      height: 140,
                      width: double.infinity,
                      color:const Color.fromARGB(255, 227, 226, 219),
                      child: Padding(padding:const EdgeInsets.all(13) ,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(Icons.location_on, size:50, color: Colors.blue,),
                          const SizedBox(height: 15,),
                          Text('7694 170 St W', textDirection: TextDirection.ltr, style:GoogleFonts.ubuntu(fontSize: 15)),
                          Text('Lekeville, california', textDirection: TextDirection.ltr, style:GoogleFonts.ubuntu(fontSize: 15)),
                          const SizedBox(height: 15,),
                        ],
                      ),
                      )
                    ) ,
                    const SizedBox(height: 15,),
                    Container(
                      height: 140,
                      width: double.infinity,
                      color:const Color.fromARGB(255, 227, 226, 219),
                      child: Padding(padding:const EdgeInsets.all(13) ,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(Icons.phone, size:50, color:Colors.blue),
                          const SizedBox(height: 15,),
                          Text('(952) 432-9014', textDirection: TextDirection.ltr, style:GoogleFonts.ubuntu(fontSize: 15)),
                          Text('(952) 432-8103', textDirection: TextDirection.ltr, style:GoogleFonts.ubuntu(fontSize: 15)),
                          const SizedBox(height: 15,),
                        ],
                      ),
                      )
                    ) ,
                    const SizedBox(height: 15,),
                    Container(
                      height: 140,
                      width: double.infinity,
                      color:const Color.fromARGB(255, 59, 66, 205),
                      child: Padding(padding:const EdgeInsets.all(13) ,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(Icons.web, size:50, color: Colors.white,),
                          const SizedBox(height: 15,),
                          Text('WWW.TRAVELAGENCY.COM', textDirection: TextDirection.ltr, style:GoogleFonts.ubuntu(fontSize: 15,color: Colors.white)),
                          const SizedBox(height: 15,),
                        ],
                      ),
                      )
                    ) ,
                    
                ],
              ),
              )
              
              
            ),
          ],
        )

    );
  }
}

