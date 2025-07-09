import 'package:flutter/material.dart';
import 'package:flutter2c/list_berita/page_list_berita.dart';
import 'package:flutter2c/screen/custom_grid/page_custom_grid.dart';
import 'package:flutter2c/screen/page_dua.dart';
import 'package:flutter2c/screen/page_empat.dart';
import 'package:flutter2c/screen/page_form_login.dart';
import 'package:flutter2c/screen/page_form_register.dart';
import 'package:flutter2c/screen/page_gambar.dart';
import 'package:flutter2c/screen/page_image_network.dart';
import 'package:flutter2c/screen/page_list.dart';
import 'package:flutter2c/screen/page_nav_bar.dart';
import 'package:flutter2c/screen/page_notification.dart';
import 'package:flutter2c/screen/page_satu.dart';
import 'package:flutter2c/screen/page_tiga.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const PageUtama(),
      debugShowCheckedModeBanner: false,
    );
  }
}

//ketik st
class PageUtama extends StatelessWidget {
  const PageUtama({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //appBar : properti
        //AppBar : Widget
        title: Text('Mobile Apps MI2c Salsabila Zahra Sarwo  ',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.pink
      ),
      drawer: SizedBox(
        width: 250,
          child: Drawer(
            child:ListView(
              children: [
                UserAccountsDrawerHeader(accountName: Text("Salsabila Zahra "),
                    accountEmail: Text("salsazhra131@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  radius: 55,
                  child: Icon(Icons.person,
                  color: Colors.green,
                  size: 65,
                      ),
                ),
                ),
                Divider(),
                ListTile(
                  title: Text("Page List"),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)
                    => PageList()
                    ));
                  },
                ),
                ListTile(
                  title: Text("Page login"),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)
                    => PageFormLogin()
                    ));
                  },
                ),
                ListTile(
                  title: Text("Page Register"),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)
                    => PageFormRegister()
                    ));
                  },
                ),
                Divider(),
                ListTile(
                  title: Text("Custom Grid"),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)
                    => PageCustomGrid()
                    ));
                  },
                ),
    Divider(),
    ListTile(
    title: Text("Page List"),
    onTap: () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => PageListBerita()
      ));
    },
    ),
              ],
            )
          ),
      ),

      body: Center(
      child:Column(
      children: [
      SizedBox(height: 50,),
    Text("Halo Selamat Datang di Aplikasi MI 2C"),
    SizedBox(height: 20,),
    MaterialButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)
        => PageSatu()
        ));
  },
    color: Colors.lightBlueAccent,
    child: Text('page 1',
    style: TextStyle(fontSize: 14,
    color: Colors.white),)
    ),


    SizedBox(height: 20,),
    MaterialButton(onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)
      => PageDua()
      ));
    },
    color: Colors.lightBlueAccent,
    child: Text('page 2',
    style: TextStyle(fontSize: 14,
    color: Colors.white),)
    ),

    SizedBox(height: 20,),
    MaterialButton(onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)
      => PageTiga()
      ));
    },
    color: Colors.lightBlueAccent,
    child: Text('page 3',
    style: TextStyle(fontSize: 14,
    color: Colors.white),)
    ),

        SizedBox(height: 20,),
        MaterialButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)
          => PageListEmpat()
          ));
        },
            color: Colors.lightBlueAccent,
            child: Text('page 4',
              style: TextStyle(fontSize: 14,
                  color: Colors.white),)
        ),
        SizedBox(height: 20,),
        MaterialButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)
          => PageGambar()
          ));
        },
            color: Colors.lightBlueAccent,
            child: Text('page gambar',
              style: TextStyle(fontSize: 14,
                  color: Colors.white),)
        ),
        SizedBox(height: 20,),
        MaterialButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)
          => PageImageNetwork()
          ));
        },
            color: Colors.lightBlueAccent,
            child: Text('page image',
              style: TextStyle(fontSize: 14,
                  color: Colors.white),)
        ),

        SizedBox(height: 20,),
        MaterialButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)
          => PageNotification()
          ));
        },
            color: Colors.lightBlueAccent,
            child: Text('page notifiaction',
              style: TextStyle(fontSize: 14,
                  color: Colors.white),)
        ),
        SizedBox(height: 20,),
        MaterialButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)
          => PageNotification()
          ));
        },
            color: Colors.lightBlueAccent,
            child: Text('page notifiaction',
              style: TextStyle(fontSize: 14,
                  color: Colors.white),)
        ),
        SizedBox(height: 20,),
        MaterialButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)
          => PageNavBar()
          ));
        },
            color: Colors.lightBlueAccent,
            child: Text('page navbar',
              style: TextStyle(fontSize: 14,
                  color: Colors.white),)
        ),


    ]

    )
    ),
    );
  }
}
