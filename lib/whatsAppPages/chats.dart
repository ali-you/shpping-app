import 'package:flutter/material.dart';
import 'package:flutter_app1/models/chatModel.dart';
import 'package:flutter_app1/whatsAppPages/singleChatScreen.dart';

class Chats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: chatInfo.length,
      itemBuilder: (context, index){
        return Column(
          children: [
            Divider(height: 10,),
            GestureDetector(
              child: ListTile(
                leading: Container(
                  height: 60,
                  width: 60,
                  child: CircleAvatar(
                    backgroundColor: Colors.grey,
                    backgroundImage: NetworkImage(chatInfo[index].avatarUrl),
                  ),
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(chatInfo[index].name),
                    Text(chatInfo[index].time, style: TextStyle(color: Colors.grey, fontSize: 13),),
                  ],
                ),
                subtitle: Container(
                  child: Text(chatInfo[index].message),
                ),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => SingleChatScreen(chatModel: chatInfo[index],)));
              },
            )
          ],
        );
      },
    );
  }
}
