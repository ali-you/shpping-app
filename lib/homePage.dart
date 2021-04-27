import 'package:flutter/material.dart';
import 'package:flutter_app1/pages/add.dart';
import 'package:flutter_app1/pages/favorite.dart';
import 'package:flutter_app1/pages/home.dart';
import 'package:flutter_app1/pages/profile.dart';
import 'package:flutter_app1/pages/search.dart';




class HomePages extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomePageState();
}


class HomePageState extends State<HomePages> {

  String currentPage = "home";
  final Map<String, Widget> pages = <String, Widget>{
    'home':Home(),
    'search':Search(),
    'add':Add(),
    'favorite':Favorite(),
    'profile':Profile(),
  };

  changePage(String name ){
    setState(() {
      currentPage = name;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: this.pages[currentPage],
      bottomNavigationBar: Container(
        color: Colors.white70,
        child: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(icon: Icon(Icons.home), onPressed: (){
                changePage('home');
              }),
              IconButton(icon: Icon(Icons.search), onPressed:(){
                changePage('search');
              }),
              IconButton(icon: Icon(Icons.add_box), onPressed: (){
                changePage("add");
              }),
              IconButton(icon: Icon(Icons.favorite), onPressed: (){
                changePage('favorite');
              }),
              IconButton(icon: Icon(Icons.person), onPressed:(){
                changePage('profile');
              }),
            ],
          ),
        ),
      ),
    );
  }
}