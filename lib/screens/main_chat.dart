import 'package:chatapp/widgets/bwidgets.dart';
import 'package:flutter/material.dart';

class ChatMScreen extends StatelessWidget {
  final String email;
  const ChatMScreen({required this.email});

  IconButton ib(IconData icon, dynamic fn) {
    return IconButton(
      padding: EdgeInsets.all(10),
      icon: Icon(
        icon,
        size: 30,
      ),
      color: Colors.blue,
      onPressed: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(email),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * .75,
              //this will get messsage blocks
            ),
            Divider(),
            FittedBox(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    ib(Icons.emoji_emotions, () {}),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      width: 300,
                      child: TextField(
                        decoration: tfInputDecoration(""),
                      ),
                    ),
                    ib(Icons.attach_file, () {}),
                    ib(Icons.camera, () {}),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
