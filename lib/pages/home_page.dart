import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Global Reciprocal Colleges'),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: Center(
      child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      Image.network(
      'https://tse3.mm.bing.net/th/id/OIP.TCDho8rcR_oDNIe7cEkcWQHaDA?rs=1&pid=ImgDetMain&o=7&rm=3',
      width: 1000,
      height: 500,
    ),
    const SizedBox(height: 20),
    const Text(
    'Welcome to Global Reciprocal Colleges',
    style: TextStyle(fontSize: 24),
    ),
    ]
    ),
    ),
    );
  }
}


