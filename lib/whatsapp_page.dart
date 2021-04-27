import 'package:flutter/material.dart';
import 'package:flutter_app1/main.dart';
import 'package:flutter_app1/whatsAppPages/calls.dart';
import 'package:flutter_app1/whatsAppPages/cameraScreen.dart';
import 'package:flutter_app1/whatsAppPages/chats.dart';
import 'package:flutter_app1/whatsAppPages/createChatScreen.dart';
import 'package:flutter_app1/whatsAppPages/settingScreen.dart';
import 'package:flutter_app1/whatsAppPages/status.dart';

class WhatsAppPage extends StatefulWidget {
  @override
  _WhatsAppPageState createState() => _WhatsAppPageState();
}

class _WhatsAppPageState extends State<WhatsAppPage>
    with SingleTickerProviderStateMixin {
  TabController tabController;
  Map<String, SliverAppBar> appBarSelector;
  String _currentAppBar = 'mainAppBar';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    tabController = TabController(initialIndex: 1, length: 4, vsync: this);

    SliverAppBar mainAppBar = SliverAppBar(
      pinned: true,
      floating: true,
      elevation: 5,
      title: Text("WhatsApp"),
      actions: [
        IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              setState(() {
                _currentAppBar = 'searchAppBar';
              });
            }),
        PopupMenuButton(
          onSelected: (String choice) {
            if(choice == 'settings')
              Navigator.push(context, MaterialPageRoute(builder: (context) => SettingScreen()));
          },
          itemBuilder: (BuildContext context) {
            return [
              PopupMenuItem(
                value: "new_group",
                child: Text("New group"),
              ),
              PopupMenuItem(
                value: "new_broadcast",
                child: Text("New broadcast"),
              ),
              PopupMenuItem(
                value: "whatsApp_web",
                child: Text("WhatsApp Web"),
              ),
              PopupMenuItem(
                value: "starred_messages",
                child: Text("Starred messages"),
              ),
              PopupMenuItem(
                value: "settings",
                child: Text("Settings"),
              ),
            ];
          },
        )
      ],
      bottom: TabBar(
        controller: tabController,
        indicatorColor: Colors.white,
        tabs: [
          Tab(
            icon: Icon(Icons.camera_alt),
          ),
          Tab(
            text: "CHATS",
          ),
          Tab(
            text: "STATUS",
          ),
          Tab(
            text: "CALLS",
          ),
        ],
      ),
    );

    SliverAppBar searchAppBar = SliverAppBar(
      pinned: true,
      floating: true,
      elevation: 5,
      backgroundColor: Colors.white,
      title: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: "Search ..."
        ),
      ),
      leading: GestureDetector(
        child: Icon(
          Icons.arrow_back,
          color: Color(0xFF075E54),
        ),
        onTap: () {
          setState(() {
            _currentAppBar = 'mainAppBar';
          });
        },
      ),
    );

    appBarSelector = <String, SliverAppBar>{
      'mainAppBar': mainAppBar,
      'searchAppBar': searchAppBar
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: Icon(Icons.message, color: Colors.white,),
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => CreateChatScreen()));
        },
      ),
      body: NestedScrollView(
        body: _currentAppBar == 'mainAppBar'?
        TabBarView(
          controller: tabController,
          children: [CameraScreen(), Chats(), Status(), Calls()],
        )
        : Center(child: Text("Search"),),
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            appBarSelector[_currentAppBar],
          ];
        },
      ),
    );
  }
}
