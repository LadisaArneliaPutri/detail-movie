import 'package:flutter/material.dart';
import 'package:flutter2c/screen/page_get_data.dart';

class PageList extends StatelessWidget {
const PageList({super.key});

@override
Widget build(BuildContext context){
  return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.pink,
      title: Text("Paassing Data List"),

    ),
    body: ListView.builder(
      itemCount: 10,
        itemBuilder: (context, index){
  return ListTile(
  title: Text("judul Berita $index",),
  subtitle: Text("Detail Berita $index"),
  onTap: (){
  Navigator.push(context, MaterialPageRoute(builder: (context) => PageGetData(index)));
  },
  );
  },
    ),
  );
}
}

