import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Plantilla02 extends StatelessWidget {
  final String? img;
  final String? title;
  final String? content;

  const Plantilla02({super.key, this.img, this.title, this.content});

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 320,
            child: Image.network('$img', fit: BoxFit.fill,),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:[
                      Text('$title', 
                      textDirection: TextDirection.ltr, 
                      textAlign:TextAlign.center,
                      style:GoogleFonts.josefinSans(fontSize: 38, fontWeight: FontWeight.bold, color:const Color.fromARGB(255, 14, 14, 15))),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical:10, horizontal: 20),
            child: Text('$content',textAlign:TextAlign.justify, style: const TextStyle(fontSize: 16, color: Color.fromARGB(255, 24, 37, 97))),
          ),
          Expanded(child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                      MaterialButton(
                        shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                        color: const Color.fromARGB(255, 201, 14, 148),
                        child:const Padding(
                          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                          child: Text('Lest go!',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                        ),
                        onPressed: () {}),
                    ],
                  ),)
          
        ],
      );
  }
}