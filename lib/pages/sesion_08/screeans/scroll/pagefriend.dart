import 'package:flutter/material.dart';

class FriendPage extends StatelessWidget {
  const FriendPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('table'),
        centerTitle: true,
      ),
      body: Padding(padding: const EdgeInsets.all(0.8), child: Table(
        
      ),),
    );
  }
}