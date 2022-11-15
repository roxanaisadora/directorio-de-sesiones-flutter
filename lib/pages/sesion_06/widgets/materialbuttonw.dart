import 'package:flutter/material.dart';

class MaterialButtonWidget extends StatelessWidget {
  final Function aumentarB;
  final Function disminuirB;
  final Function resetB;

  const MaterialButtonWidget({super.key, required this.aumentarB, required this.disminuirB, required this.resetB});

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          height: 50,
          width: 50,
          child: MaterialButton(
          shape: const CircleBorder(),
          color: Colors.amber,
          child:const  Icon(Icons.add),
          onPressed:()=> aumentarB()
          ),
        ),
        SizedBox(
          height: 50,
          width: 50,
          child: MaterialButton(
          shape: const CircleBorder(),
          color: const Color.fromRGBO(175, 249, 57, 1),
          child:const  Icon(Icons.remove),
          onPressed:()=> disminuirB()),
          
        ),
        SizedBox(
          height: 50,
          width: 50,
          child: MaterialButton(
          shape: const CircleBorder(),
          color: const Color.fromARGB(255, 59, 244, 225),
          child:const  Icon(Icons.delete),
          onPressed:()=> resetB()),
        ),
      ],
    );
  }
}