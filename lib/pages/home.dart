import 'package:flutter/material.dart';
import 'package:flutter_app1/list_story.dart';


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var deviceSize = MediaQuery.of(context).size;

    List<String> images = [
      ''
    ];

    final AppBar appBar = AppBar(
      backgroundColor: Colors.white70,
      leading: Icon(Icons.camera_alt),
      title: Text('Instagram'),
      centerTitle: true,
      actions: [
        Padding(child: Icon(Icons.send), padding: EdgeInsets.only(right: 10.0),),
      ],
    );


    final instaPost = Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.all(5.0),
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtOEHKSVx17NvIof0dmC8Cj2Koar7-ABOZsA&usqp=CAU")
                      )
                  ),
                ),
                Text("Alex", style: TextStyle(fontWeight: FontWeight.bold),)
              ],
            ),
            IconButton(icon: Icon(Icons.more_vert), onPressed: null)
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Image.network("https://www.nxtbookmedia.com/wp-content/uploads/2014/06/netflix.png", fit: BoxFit.cover,),
            )
          ],

        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                IconButton(icon: Icon(Icons.favorite_outline), onPressed: null),
                IconButton(icon: Icon(Icons.mode_comment_outlined), onPressed: null),
                IconButton(icon: Icon(Icons.send), onPressed: null),
              ],
            ),
            IconButton(icon: Icon(Icons.bookmark_border_outlined), onPressed: null)
          ],
        ),
      ],
    );

    return Scaffold(
      appBar: appBar,
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) =>
            index==0 ? SizedBox(child: ListStories(), height: deviceSize.height * 0.15) : instaPost,


      ),
    );
  }
}
