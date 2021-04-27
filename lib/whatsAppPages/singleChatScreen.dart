import 'package:flutter/material.dart';
import 'package:flutter_app1/models/chatModel.dart';

class SingleChatScreen extends StatelessWidget {


  final ChatModel chatModel;

  SingleChatScreen({@required this.chatModel});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: (){
          Navigator.pop(context);
        },),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundColor: Colors.grey,
              backgroundImage: NetworkImage(chatModel.avatarUrl),
            ),
            SizedBox(width: 20,),
            Text(chatModel.name)
          ],
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Text("Chat Page")
          ],
        ),
      ),
    );
  }
}
