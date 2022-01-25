import 'package:chatapp/dummy_data.dart';
import 'package:chatapp/widgets/main_drawer.dart';
import 'package:chatapp/widgets/user_item.dart';
import 'package:flutter/material.dart';

class ChatsPage extends StatefulWidget {
  ChatsPage({Key? key}) : super(key: key);

  @override
  _ChatsPageState createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  final displayedUsers = [
    "Yash1@gmail.com",
    "Shreya1@gmail.com",
    "Aryaman1@gmail.com",
    "asdad1@gmail.com",
    "cgbcffbfc@gmail.com",
    "iouklluiukli@gmail.com",
    "sksoww@gmail.com",
    "qwerty@gmail.com",
    "yytrewq@gmail.com",
    "zxcvbn@gmail.com",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Chat App',
        ),
      ),
      drawer: MainDrawer(),
      body: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: displayedUsers.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              child: UserItem(email: displayedUsers[index]),
            );
          }),
    );
  }
}
