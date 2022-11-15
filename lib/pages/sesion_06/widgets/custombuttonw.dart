import 'package:flutter/material.dart';

class CustomButtonWidget extends StatelessWidget {
  final Function aumentarB;
  final Function disminuirB;
  final Function resetB;

  const CustomButtonWidget({super.key, required this.aumentarB, required this.disminuirB, required this.resetB});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          heroTag: const Text('btn1'),
          tooltip: 'Aumentar',
          child:const  Icon(Icons.add),
          onPressed: ()=> aumentarB()),

          FloatingActionButton(
          heroTag: const Text('btn2'),
          tooltip: 'Reset',
          child:const  Icon(Icons.restore_sharp),
          onPressed: ()=> disminuirB()),

          FloatingActionButton(
          heroTag: const Text('btn3'),
          tooltip: 'Disminuir',
          child:const  Icon(Icons.swap_vert_circle_sharp),
          onPressed: ()=> resetB()),
      ],
    );
  }
}