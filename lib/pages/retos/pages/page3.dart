

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sesion_03/pages/retos/pages/page4.dart';

class ChallengeWidget03 extends StatelessWidget {
  const ChallengeWidget03({super.key});

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
                  const SizedBox(height: 20,),
                  Row(
                    children: [
                      Text('3', textDirection: TextDirection.ltr, style:GoogleFonts.ubuntu(fontSize: 80, fontWeight: FontWeight.bold,color: const Color.fromARGB(255, 178, 178, 173))),
                      Expanded(child: Container(color:const Color.fromARGB(255, 178, 178, 173),height: 5,))
                    ],
                  ),
                   const Text('Key features',
                      style: TextStyle(color: Color.fromARGB(255, 44, 47, 236), fontSize: 25, fontWeight: FontWeight.bold,)),
                      const SizedBox(height: 15,),
                    Container(
                      height: 110,
                      color:const Color.fromARGB(255, 227, 226, 219),
                      child: Padding(padding:const EdgeInsets.all(13) ,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 15,),
                          Text('Discount group whit flexible conditions-including changes payment schedules, return of unsed seats without penaity', textDirection: TextDirection.ltr, style:GoogleFonts.ubuntu(fontSize: 14),
                      textAlign:TextAlign.justify),
                          const SizedBox(height: 15,),
                        ],
                      ),
                      )
                    ) ,
                    const SizedBox(height: 15,),
                    Container(
                      height: 110,
                      color:const Color.fromARGB(255, 227, 226, 219),
                      child: Padding(padding:const EdgeInsets.all(13) ,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 15,),
                          Text('Volume discount-competitively priced fares for your traveles when looking large number.', textDirection: TextDirection.ltr, style:GoogleFonts.ubuntu(fontSize: 15),
                      textAlign:TextAlign.justify),
                          const SizedBox(height: 15,),
                        ],
                      ),
                      )
                    ) ,
                    const SizedBox(height: 15,),
                    Container(
                      height: 110,
                      color:const Color.fromARGB(255, 227, 226, 219),
                      child: Padding(padding:const EdgeInsets.all(13) ,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 15,),
                          Text('Travel round America\'s  big hearted, musically influenced southern cities of America.', textDirection: TextDirection.ltr, style:GoogleFonts.ubuntu(fontSize: 15),
                      textAlign:TextAlign.justify),
                          const SizedBox(height: 15,),
                        ],
                      ),
                      )
                    ) ,
                    const SizedBox(height: 15,),
                    Container(
                      height: 110,
                      color:const Color.fromARGB(255, 227, 226, 219),
                      child: Padding(padding:const EdgeInsets.all(13) ,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 15,),
                          Text('Volume discount-competitively priced fares for your traveles when looking large number.', textDirection: TextDirection.ltr, style:GoogleFonts.ubuntu(fontSize: 15),
                      textAlign:TextAlign.justify),
                          const SizedBox(height: 15,),
                        ],
                      ),
                      )
                    ) ,
                    const SizedBox(height: 15,),
                    Expanded(child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      MaterialButton(
                        shape: const CircleBorder(),
                        color:Colors.amber,
                        child:const Icon(Icons.chevron_right, size: 40,color: Colors.white,),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ChallengeWidget04()));
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

