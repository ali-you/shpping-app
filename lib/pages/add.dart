import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Add extends StatelessWidget {
  final AppBar appBar = AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    leading: Icon(Icons.menu),
    title: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text("Google"),
    ),
    centerTitle: true,
    actions: [
      Padding(
          child: Icon(Icons.more_vert), padding: EdgeInsets.only(right: 10.0)),
    ],
  );

  @override
  Widget build(BuildContext context) {

    final imageList = Expanded(
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 20,
          itemBuilder: (context, index) {
            return Stack(
              children: [
                Container(
                  margin: EdgeInsets.all(5.0),
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtOEHKSVx17NvIof0dmC8Cj2Koar7-ABOZsA&usqp=CAU")
                      )
                  ),
                )
              ],
            );
          }
      ),
    );


    final videoList = Expanded(
      child: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) {
            return Row(
              children: [
                Container(
                  margin: EdgeInsets.all(5.0),
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtOEHKSVx17NvIof0dmC8Cj2Koar7-ABOZsA&usqp=CAU")
                      )
                  ),
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Facebook", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),),
                    Text("Youtube. Epix Tv"),
                    Text("21 june 2019"),
                  ],
                )

              ],
            );
          }
      ),
    );



    var cardSize = MediaQuery.of(context).size.width - 30;
    return Scaffold(
      appBar: appBar,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 25, left: 25, top: 20),
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
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                              disabledBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              focusedErrorBorder: InputBorder.none,
                              filled: true,
                              hintText: "Facebook.Com",
                              fillColor: Colors.white),
                        ),
                      ),
                      SizedBox(width: 8),
                      Icon(Icons.search),
                    ],
                  ),
                ),
              ),
            ),



            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: SizedBox(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Card(
                        child: Center(child: Text("All", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),)),
                        elevation: 2,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                      ),
                    ),


                    Expanded(
                      child: Card(
                        child: Center(child: Text("Images", style: TextStyle(fontWeight: FontWeight.bold))),
                        elevation: 2,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                      ),
                    ),


                    Expanded(
                      child: Card(
                        child: Center(child: Text("News", style: TextStyle(fontWeight: FontWeight.bold))),
                        elevation: 2,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                      ),
                    ),
                    Expanded(
                      child: Card(
                        child: Center(child: Text("Videos", style: TextStyle(fontWeight: FontWeight.bold))),
                        elevation: 2,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Container(
              height: 100,
              width: cardSize,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                      spreadRadius: 1)
                ],
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(FontAwesomeIcons.facebook),
                      SizedBox(width: 10,),
                      Text("Www.Facebook.Com"),
                    ],
                  ),
                  Text("Simply Dummy text of the printing and typesetting\nindustry. Lorem ipsum has been the industry's Standard"),
                  Text("You last visited this page on 01/03/2020", style: TextStyle(color: Colors.grey),)
                ],
              )
            ),


            SizedBox(height: 10),


            Container(
                height: 80,
                width: cardSize,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black12,
                        blurRadius: 10,
                        spreadRadius: 1)
                  ],
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(FontAwesomeIcons.googlePlay),
                        SizedBox(width: 10,),
                        Text("Google Play", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold)),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(FontAwesomeIcons.facebook, size: 50,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("Facebook", style: TextStyle(fontWeight: FontWeight.bold),),
                            Text("App Installed", style: TextStyle(color: Colors.grey),)
                          ],
                        )
                      ],
                    )
                  ],
                )
            ),


            SizedBox(height: 10),


            Container(
                height: 100,
                width: cardSize,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black12,
                        blurRadius: 10,
                        spreadRadius: 1)
                  ],
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.image, color: Colors.grey,),
                            SizedBox(width: 10,),
                            Text("Images", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold)),
                          ],
                        ),

                        Row(
                          children: [
                            Text("See All", style: TextStyle(color: Colors.blue)),
                            SizedBox(width: 10,),
                            Icon(Icons.arrow_forward_ios, color: Colors.blue,),
                          ],
                        ),

                      ],
                    ),
                    imageList
                  ],
                )
            ),

            SizedBox(height: 10),


            Container(
                height: 150,
                width: cardSize,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black12,
                        blurRadius: 10,
                        spreadRadius: 1)
                  ],
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.ondemand_video, color: Colors.grey,),
                            SizedBox(width: 10,),
                            Text("Images", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold)),
                          ],
                        ),

                        Row(
                          children: [
                            Text("See All", style: TextStyle(color: Colors.blue,)),
                            SizedBox(width: 10,),
                            Icon(Icons.arrow_forward_ios, color: Colors.blue,),
                          ],
                        ),
                      ],
                    ),
                    videoList
                  ],
                )
            ),



          ],
        ),
      ),
    );
  }
}
