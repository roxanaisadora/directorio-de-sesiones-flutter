import 'package:flutter/material.dart';

class Home07 extends StatelessWidget {
  const Home07({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Sesiones de la unidad 02'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 35, 5, 85).withOpacity(0.8)
        ),
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 220,
            child: Image.network('https://cdn.pixabay.com/photo/2017/02/01/22/02/mountain-landscape-2031539_960_720.jpg', fit: BoxFit.fill,),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const[
                      Text('Titulo Princial'),
                      Text('Subtitulo')
                    ],
                  ),
                ),
                const Icon(Icons.star, color: Colors.yellow,),
                const Text('41')
              ],
            ),
          ),
          Row(
            children: [
              IconButton(onPressed: (){}, icon: const Icon(Icons.phone),)
            ],
          ),
          const Text('aaaaa')
        ],
      ),
    );
  }
}