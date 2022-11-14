import 'package:flutter/material.dart';
import 'package:sesion_03/pages/sesion_03/imagenes.dart';
import 'package:sesion_03/pages/sesion_03/listtile.dart';
import 'package:sesion_03/pages/sesion_03/animation.dart';
import 'package:sesion_03/main.dart';


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: SizedBox(
            child: Image.network(
              'https://mir-s3-cdn-cf.behance.net/projects/404/c697f587154819.Y3JvcCwxMzc2LDEwNzcsMjY1LDA.png',
            )),
        elevation: 20,
        leading: IconButton(
          icon: const Icon(Icons.home),
          tooltip: 'Menu',
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
                  builder: (context)=> const MyApp(),
                  ),);
          },
        ),
      backgroundColor: const Color.fromARGB(255, 35, 5, 85).withOpacity(0.8)),
      
      body: Center(
        child: Padding(
        padding: const EdgeInsets.all(60.0),
        child: ListView(
          children: [
            MaterialButton(
                height: 50,
                minWidth: double.infinity,
                color: const Color.fromARGB(255, 109, 50, 122),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: const Text(
                  'Directorio',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ListTileDemo()));
                }),
            const SizedBox(
              height: 30,
            ),
            MaterialButton(
                height: 50,
                minWidth: double.infinity,
                color: const Color.fromARGB(255, 109, 50, 122),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: const Text(
                  'Animes',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ImagesDemo()));
                }),
            const SizedBox(
              height: 30,
            ),
            MaterialButton(
                height: 50,
                minWidth: double.infinity,
                color: const Color.fromARGB(255, 109, 50, 122),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: const Text(
                  'animation',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AnimacionDemo()));
                }),
                const SizedBox(
              height: 80,
            ),
            const SizedBox(
            height: 200,
            width: double.infinity,
            child: FadeInImage(
              placeholder: AssetImage('assets/loading.gif'),
              image: AssetImage('assets/welcome.gif'),
            ))

          ],
        ),
      ),
      )
    );
  }
}
