import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_app1/whatsapp_page.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  startTime() {
    var _duration = Duration(seconds: 3);
    return Timer(_duration, navigationPage);
  }

  navigationPage() {
    Navigator.pushReplacementNamed(context, "/login_screen");
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF075E54),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Column(
      mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 125,
                height: 125,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/icon.png")
                  )
                ),
              ),

              Text("WhatsApp", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 18),)
            ],
          ),

          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: CircularProgressIndicator(),
            ),
          )
        ],
      ),
    );
  }
}
