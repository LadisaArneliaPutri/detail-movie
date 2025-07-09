import 'package:flutter/material.dart';
import 'package:flutter2c/screen/custom_grid/page_detail_grid.dart';


class PageCustomGrid extends StatefulWidget {
  const PageCustomGrid({super.key});


  @override
  State<PageCustomGrid> createState() => _PageCustomGridState();
}

class _PageCustomGridState extends State<PageCustomGrid> {

  List<Map<String, dynamic>> ListMovie =[
    {
      "judul":"Ciao Alberto",
      "gambar":"movie1.jpg",
      "harga":"Rp 45.000"
    },
    {
      "judul":"The Simpson",
      "gambar":"movie2.png",
      "harga":"Rp 45.000"
    },
    {
      "judul":"Jungle Cruise",
      "gambar":"movie3.jpg",
      "harga":"Rp 45.000"
    },
    {
      "judul":"Home Alon",
      "gambar":"movie4.jpg",
      "harga":"Rp 45.000"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Movie App'),
        backgroundColor: Colors.pink,
      ),

      body: GridView.builder(
          itemCount: ListMovie.length,
          gridDelegate: const
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PageDetailGrid(ListMovie[index])
                    ));
              },

              child: Padding(padding: EdgeInsets.all(10),
                child: GridTile(
                  footer: Container(
                    decoration: BoxDecoration(
                        color: Colors.pinkAccent,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 1, color: Colors.black54)
                    ),
                    child: Column(
                      children: [
                        Text("${ListMovie[index]["judul"]}", style: TextStyle(
                            fontWeight: FontWeight.bold
                        ),),
                        Text('Rp. ${ListMovie[index]['harga']}')
                      ],
                    ),
                  ),
                  child: Image.asset('gambar/${ListMovie[index]['gambar']}'),
                ),
              ),
            );
          }),
    );
  }}