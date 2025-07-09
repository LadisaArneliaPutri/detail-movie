import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';


//https://dicoding-web-img.sgp1.cdn.digitaloceanspaces.com/original/event/dos:flutter_festival_bogor_2022_mc_170322010111.png

class PageImageNetwork extends StatelessWidget {
  const PageImageNetwork({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text('Image Network'),
      ),
      body: Center(
        child:  CachedNetworkImage(
          imageUrl: "https://png.pngtree.com/thumb_back/fh260/background/20230610/pngtree-easy-cute-cartoon-hamster-draw-image_2912085.jpg",
          placeholder: (context, url) => CircularProgressIndicator(),
          errorWidget: (context, url, error) => Icon(Icons.error),
        ),
        //child: Image.network(
           // 'https://dicoding-web-img.sgp1.cdn.digitaloceanspaces.com/original/event/dos:flutter_festival_bogor_2022_mc_170322010111.png'),
      ),
    );
  }
}
  
  