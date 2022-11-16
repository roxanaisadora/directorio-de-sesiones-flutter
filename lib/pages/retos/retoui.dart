import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sesion_03/pages/retos/pages/page1.dart';

class ChallengeWidget extends StatelessWidget {
  const ChallengeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  CustomScrollView(
          slivers: [
            SliverFillRemaining(
            hasScrollBody: false,
              child: Column(
                children: <Widget>[
                  const SizedBox(height: 70,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(Icons.flight),  
                      Text('TRAVEL AGENCY', textDirection: TextDirection.ltr, style:GoogleFonts.ubuntu(fontSize: 20, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  const SizedBox(height: 30,),
                  
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child:Image.asset(
                      'assets/prueba.jpg',
                      width: 300,
                      height: 300,
                      fit:BoxFit.fill  
                    ) ,
                    ),
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
                          Text('Holidays in', textDirection: TextDirection.ltr, style:GoogleFonts.indieFlower(fontSize: 40, fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 33, 37, 243))),
                          Text('New-York', textDirection: TextDirection.ltr, style:GoogleFonts.indieFlower(fontSize: 40, fontWeight: FontWeight.bold, color:const Color.fromARGB(255, 33, 37, 243))),
                          Text('View our tour packages today', textDirection: TextDirection.ltr, style:GoogleFonts.indieFlower(fontSize: 20, fontWeight: FontWeight.bold)),
                        ],
                    ),
                    )
                    ),
                  ),
                  const SizedBox(height: 20,),
                  SizedBox(
                    height: 60,
                    width: 200,
                    child: MaterialButton(
                    elevation: 1,
                    color: const Color.fromARGB(255, 33, 37, 243),
                    shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)),
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Text('SWIPE',
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                    Icon(Icons.arrow_forward, color: Colors.white,size: 40,)
                      ],
                    ),
                    onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ChallengeWidget01()));
                    },
                  ),
                  ),
                  const SizedBox(height: 50,),

                ],
              ),
            ),
          ],
        )

    );
  }
}

