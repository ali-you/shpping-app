import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Search extends StatelessWidget {
  final AppBar appBar = AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    leading: Icon(Icons.menu),
    actions: [
      Padding(
          child: Icon(Icons.more_vert), padding: EdgeInsets.only(right: 10.0)),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: appBar,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.all(80),
              child: Image.network(
                  "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2f/Google_2015_logo.svg/1200px-Google_2015_logo.svg.png"),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                      spreadRadius: 1,
                    )
                  ],
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Icon(Icons.search),
                      SizedBox(width: 8),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                              disabledBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              focusedErrorBorder: InputBorder.none,
                              filled: true,
                              hintText: "Search Anything",
                              fillColor: Colors.white),
                        ),
                      ),
                      SizedBox(width: 8),
                      Icon(Icons.mic),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 10,
                              spreadRadius: 1)
                        ],
                        borderRadius: BorderRadius.circular(100.0),
                      ),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(Icons.camera),
                      ),
                    ),
                    SizedBox(height: 15,),

                    Text("Instagram")
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 10,
                              spreadRadius: 1)
                        ],
                        borderRadius: BorderRadius.circular(100.0),
                      ),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(Icons.alternate_email_outlined),
                      ),
                    ),
                    SizedBox(height: 15,),

                    Text("Facebook")
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 10,
                              spreadRadius: 1)
                        ],
                        borderRadius: BorderRadius.circular(100.0),
                      ),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(Icons.comment),
                      ),
                    ),
                    SizedBox(height: 15,),

                    Text("Twitter")
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 10,
                              spreadRadius: 1)
                        ],
                        borderRadius: BorderRadius.circular(100.0),
                      ),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(Icons.video_label),
                      ),
                    ),
                    SizedBox(height: 15,),
                    Text("Youtube")
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 10,
                              spreadRadius: 1)
                        ],
                        borderRadius: BorderRadius.circular(100.0),
                      ),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(Icons.add),
                      ),
                    ),
                    SizedBox(height: 15,),
                    Text("Add Here")
                  ],
                ),
                Container(
                  width: 40,
                  height: 40,
                  margin: EdgeInsets.all(5),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
