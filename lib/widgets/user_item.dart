import 'package:chatapp/screens/chatc_screen.dart';
import 'package:chatapp/screens/main_chat.dart';
import 'package:flutter/material.dart';

class UserItem extends StatelessWidget {
  final String email;

  UserItem({required this.email});

  void selectCategory(BuildContext ctx) {}

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ChatMScreen(
                      email: email,
                    )));
      },
      child: Container(
        height: 75,
        padding: const EdgeInsets.all(15),
        child: Row(
          children: [
            Container(
              height: 50,
              padding: EdgeInsets.all(10),
              child: Text(
                email.substring(0, 2).toUpperCase(),
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.blue,
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Text(
                email,
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
