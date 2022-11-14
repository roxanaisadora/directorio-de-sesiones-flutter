import 'package:flutter/material.dart';
import 'package:sesion_03/pages/sesion_03/imagenes_1.dart';
import 'package:sesion_03/pages/sesion_03/imagenes_2.dart';
import 'package:sesion_03/pages/sesion_03/imagenes_3.dart';

class ImagesDemo extends StatelessWidget {
  const ImagesDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animes'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: ListView(
          children: [
            MaterialButton(
                height: 50,
                minWidth: double.infinity,
                color: Colors.blueAccent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: const Text(
                  'One piece',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ImagesDemo1()));
                }),
            const SizedBox(
              height: 30,
            ),
            MaterialButton(
                height: 50,
                minWidth: double.infinity,
                color: Colors.blueAccent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: const Text(
                  'Black Clover',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ImagesDemo2()));
                }),
            const SizedBox(
              height: 30,
            ),
            MaterialButton(
                height: 50,
                minWidth: double.infinity,
                color: Colors.blueAccent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: const Text(
                  'Tensei Shitara Slime',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ImagesDemo3()));
                }),
            const SizedBox(
              height: 30,
            ),
                const SizedBox(
            height: 200,
            width: double.infinity,
            child: FadeInImage(
              placeholder: AssetImage('assets/loading.gif'),
              image: AssetImage('assets/anime.gif'),
            ))
          ],
        ),
      ),
    );
  }
}
