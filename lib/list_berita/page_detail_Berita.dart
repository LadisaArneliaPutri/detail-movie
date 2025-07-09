import 'package:flutter/material.dart';

class PageDetailBerita extends StatelessWidget {
  final Map<String, dynamic> berita;

  const PageDetailBerita({Key? key, required this.berita}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(berita['judul']),
        backgroundColor: Colors.pink,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                berita['gambar'],
                fit: BoxFit.cover,
                width: double.infinity,
                height: 200,
              ),
            ),
            SizedBox(height: 20),
            Text(
              berita['judul'],
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              berita['tanggal'],
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Icon(Icons.star, color: Colors.orange, size: 20),
                SizedBox(width: 5),
                Text(
                  berita['rating'],
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              berita['isi'],
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}