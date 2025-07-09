import 'package:flutter/material.dart';

class PageTiga extends StatelessWidget {
  const PageTiga({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('page 3'),
        backgroundColor: Colors.pink,

      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.phone,
                  size: 35,
                  color: Colors.greenAccent,
                ),
                Text('phone')
              ],
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.home,
                  size: 35,
                  color: Colors.redAccent,
                ),
                Text('rumah')
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.spa,
                  size: 35,
                  color: Colors.yellowAccent,
                ),
                Text('spa')
              ],
            ),



          ],

        ),
      ),
    );
  }
}