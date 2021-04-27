import 'package:flutter/material.dart';

final topText = Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: <Widget>[
    Text("Stories", style: TextStyle(fontWeight: FontWeight.bold)),
    Row(children: [
      Text("Show All", style: TextStyle(fontWeight: FontWeight.bold),),
      Icon(Icons.play_arrow),
    ],)
  ],
);

final stories = Expanded(
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
              shape: BoxShape.circle,
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

class ListStories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            topText,
            stories
          ],
        ),
      ),
    );
  }
}





