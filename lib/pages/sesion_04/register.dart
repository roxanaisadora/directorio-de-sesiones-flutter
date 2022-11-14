
import 'package:flutter/material.dart';
class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: const Text('Registro'),
        backgroundColor:const  Color.fromARGB(255, 10, 201, 39).withOpacity(0.8),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(),
        ),
    );
  }
}