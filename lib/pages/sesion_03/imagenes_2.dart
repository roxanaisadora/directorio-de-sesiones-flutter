import 'package:flutter/material.dart';

class ImagesDemo2 extends StatelessWidget {
  const ImagesDemo2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Black Clover'),
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
              image: AssetImage('assets/clover-1.gif'),
            ))
            ),
            const Card(
            child: SizedBox(
            height: 200,
            width: double.infinity,
            child: FadeInImage(
              placeholder: AssetImage('assets/loading.gif'),
              image: AssetImage('assets/clover-2.gif'),
            ))
            ),
            const Card(
            child: SizedBox(
            height: 200,
            width: double.infinity,
            child: FadeInImage(
              placeholder: AssetImage('assets/loading.gif'),
              image: AssetImage('assets/clover-3.gif'),
            ))
            )
        ] 
      ),
    );
  }
}
