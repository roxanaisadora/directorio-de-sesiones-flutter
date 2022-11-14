import 'package:flutter/material.dart';

class ImagesDemo1 extends StatelessWidget {
  const ImagesDemo1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('One Piece'),
        centerTitle: true,
        elevation: 0,
        backgroundColor:const  Color.fromARGB(255, 23, 7, 7).withOpacity(0.8)
      ),
      body: Center(
        child: ListView(
          padding: const EdgeInsets.all(10.0),
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const Card(
            child: SizedBox(
            height: 200,
            width: double.infinity,
            child: FadeInImage(
              placeholder: AssetImage('assets/loading.gif'),
              image: AssetImage('assets/onepiece.gif'),
            ))
            ),
            const Card(
            child: SizedBox(
            height: 200,
            width: double.infinity,
            child: FadeInImage(
              placeholder: AssetImage('assets/loading.gif'),
              image: AssetImage('assets/one-piece-gif-4.gif'),
            ))
            ),
            const Card(
            child: SizedBox(
            height: 200,
            width: double.infinity,
            child: FadeInImage(
              placeholder: AssetImage('assets/loading.gif'),
              image: AssetImage('assets/one-piece-1.gif'),
            ))
            )
        ] 
      ),
      )
    );
  }
}
