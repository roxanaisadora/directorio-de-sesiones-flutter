import 'package:flutter/material.dart';

class ImagesDemo3 extends StatelessWidget {
  const ImagesDemo3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tensei Shitara Slime'),
        centerTitle: true,
        elevation: 0,
        backgroundColor:const  Color.fromARGB(255, 23, 7, 7).withOpacity(0.8)
      ),
      body: ListView(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const Card(
            child: SizedBox(
            height: 200,
            width: double.infinity,
            child: FadeInImage(
              placeholder: AssetImage('assets/loading.gif'),
              image: AssetImage('assets/tensei-1.gif'),
            ))
            ),
            const Card(
            child: SizedBox(
            height: 200,
            width: double.infinity,
            child: FadeInImage(
              placeholder: AssetImage('assets/loading.gif'),
              image: AssetImage('assets/tensei-2.gif'),
            ))
            ),
            const Card(
            child: SizedBox(
            height: 200,
            width: double.infinity,
            child: FadeInImage(
              placeholder: AssetImage('assets/loading.gif'),
              image: AssetImage('assets/tensei-3.gif'),
            ))
            )
        ] 
      ),
    );
  }
}
