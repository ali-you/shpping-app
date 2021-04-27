import 'package:flutter/material.dart';
import 'package:flutter_app1/HivePrac/ListViewWidget.dart';
import 'package:flutter_app1/HivePrac/Product.dart';
import 'package:flutter_app1/HivePrac/SingleProductScreen.dart';
import 'package:flutter_app1/HivePrac/User.dart';
import 'package:hive/hive.dart';

class ProductScreen extends StatefulWidget {
  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  TextEditingController searchController = TextEditingController();
  List<Product> temp = <Product>[];
  List<Product> selected = <Product>[];

  searchList(List<Product> list, String word) {
    temp.clear();
    list.forEach((element) {
      if (element.name.contains(word)) temp.add(element);
    });
  }

  User currentUser;
  List<dynamic> cache;

  @override
  void initState() {
    Box user = Hive.box("users");
    currentUser = user.getAt(0);
    cache = Hive.box("products").values.toList();
    print(cache);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(5),
          width: MediaQuery.of(context).size.width,
          height: 80,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [Colors.lightBlue, Colors.purple])),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Welcome  " + currentUser.username,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [Colors.lightBlue, Colors.purple]),
                ),
                child: TextField(
                  controller: searchController,
                  decoration: InputDecoration(
                    hintText: "Search ...",
                    disabledBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    focusedErrorBorder: InputBorder.none,
                    prefixIcon: Icon(Icons.search),
                  ),
                  onChanged: (value) {
                    searchList(productInfo, searchController.text);
                    setState(() {});
                    print(searchController.text);
                  },
                ),
              ),
            ],
          ),
        ),
        ListViewWidget(
          product: select(),
        )
      ],
    );
  }

  List<dynamic> select() {
    if (searchController.text.isEmpty && cache.isEmpty) return productInfo;
    if (cache.isNotEmpty && searchController.text.isEmpty) return cache;
    if (searchController.text.isNotEmpty) return temp;
  }
}
