import 'package:flutter/material.dart';
import 'package:flutter2c/screen/page_form_login.dart';
import 'package:flutter2c/screen/page_gambar.dart';
import 'package:flutter2c/screen/page_satu.dart';

class PageNavBar extends StatefulWidget {
  const PageNavBar({super.key});


  @override
  State<PageNavBar> createState() => _PageNavbarState();
}

class _PageNavbarState extends State<PageNavBar> with SingleTickerProviderStateMixin {

  TabController? tabController;

@override
void initState() {
  super.initState();
  tabController = TabController(length: 3, vsync: this);
}
@override
Widget build(BuildContext context ){
  return Scaffold(
      body: TabBarView(
          controller: tabController,
          children: const [PageSatu(), PageGambar(),PageFormLogin() ]),
    bottomNavigationBar: BottomAppBar(
      child: TabBar(
        isScrollable: true,
        labelColor: Colors.blueAccent,
        unselectedLabelColor: Colors.purple,
          controller: tabController,
        tabs: const [
          Tab(
            text: "Satu",
            icon: Icon(
              Icons.assignment,
            ),
          ),
          Tab(
            text: "Gambar",
            icon: Icon(
              Icons.photo,
            ),
          ),
          Tab(
            text: "Login",
            icon: Icon(
              Icons.folder_delete_outlined,
            ),
          ),
        ]
      ),
    ),
    );
}




}

