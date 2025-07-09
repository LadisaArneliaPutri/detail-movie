import 'package:flutter/material.dart';

class PageSatu extends StatelessWidget {
  const PageSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('page 1'),
        backgroundColor: Colors.pink,
      ),
      body: Center(
        child: Text('halaman page 1'),
      ),
    );
  }
}