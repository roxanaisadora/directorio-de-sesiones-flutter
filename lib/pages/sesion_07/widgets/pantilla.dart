import 'package:flutter/material.dart';

class Plantilla extends StatelessWidget {
  final String? img;
  final String? title;
  final String? subtitle;
  final String? content;

  const Plantilla({super.key, this.img, this.title, this.subtitle, this.content});

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 220,
            child: Image.network('$img', fit: BoxFit.fill,),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                      Text('$title'),
                      Text('$subtitle')
                    ],
                  ),
                ),
                const Icon(Icons.star, color: Colors.yellow,),
                const Text('41')
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                IconButton(onPressed: (){}, icon: const Icon(Icons.phone),)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical:10, horizontal: 20),
            child: Text('$content'),
          )
        ],
      );
  }
}