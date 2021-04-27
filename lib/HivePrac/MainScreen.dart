import 'package:flutter/material.dart';
import 'package:flutter_app1/HivePrac/BasketScreen.dart';
import 'package:flutter_app1/HivePrac/HiveLoginScreen.dart';
import 'package:flutter_app1/HivePrac/ProductScreen.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
    with SingleTickerProviderStateMixin {
  TabController tabController;
  String _currentAppBar = 'loginScreen';
  SliverAppBar mainAppBar;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(initialIndex: 1, length: 3, vsync: this);

    mainAppBar = SliverAppBar(
      title: Text("Shopping App"),
      pinned: true,
      floating: true,
      elevation: 5,
      bottom: TabBar(
        controller: tabController,
        indicatorColor: Colors.white,
        tabs: [
          Tab(
            text: "Product",
          ),
          Tab(
            text: "Shopping Basket",
          ),
          Tab(
            text: "Profile",
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
          headerSliverBuilder:
              (BuildContext context, bool innerBoxIsScrolled) => [mainAppBar],
          body: TabBarView(
            controller: tabController,
            children: [ProductScreen(), BasketScreen(), HiveLoginScreen()],
          )),
    );
  }
}
