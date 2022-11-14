import 'package:flutter/material.dart';
import 'dart:math';

class AnimacionDemo extends StatefulWidget {
  const AnimacionDemo({super.key});

  @override
  State<AnimacionDemo> createState() => _AnimacionDemoState();
}

class _AnimacionDemoState extends State<AnimacionDemo> {
  double _width = 70;
  double _height = 70;
  Color _color = const Color.fromARGB(255, 241, 168, 23);
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(10);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animacion'),
        centerTitle: true,
        elevation: 0,
        backgroundColor:const Color.fromARGB(255, 7, 209, 118).withOpacity(0.8)
      ),
      body: Center(
        child: AnimatedContainer(
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            color: _color,
            borderRadius: _borderRadius,
          ),
          duration: const Duration(seconds: 1),
          curve: Curves.fastOutSlowIn,
        ),
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 252, 93, 7),
          onPressed: () {
            setState(() {
              final random = Random();
              _width = random.nextInt(600).toDouble();
              _height = random.nextInt(600).toDouble();

              _color = Color.fromRGBO(random.nextInt(200), random.nextInt(200),
                  random.nextInt(200), 1);

              _borderRadius =
                  BorderRadius.circular(random.nextInt(100).toDouble());
            });
          },
          child: const Icon(Icons.accessibility_sharp)),
    );
  }
}
