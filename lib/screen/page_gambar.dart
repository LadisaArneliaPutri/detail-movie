import 'package:flutter/material.dart';

class PageGambar extends StatelessWidget {
  const PageGambar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text('Swiss Tour'),
      ),
      body: Center(
        child: Image.asset('gambar/swiss.jpeg'),
      ),
    );
  }
}