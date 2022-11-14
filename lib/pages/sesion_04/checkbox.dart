import 'package:flutter/material.dart';

class SwitchExample extends StatefulWidget {
  const SwitchExample({super.key});

  @override
  State<SwitchExample> createState() => _SwitchExampleState();
}

class _SwitchExampleState extends State<SwitchExample> {
  bool light = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: const Text('Checkbox & switch'),
        backgroundColor:const Color.fromARGB(255, 201, 96, 10).withOpacity(0.8),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(),
        ),
    );
  }
    
}
