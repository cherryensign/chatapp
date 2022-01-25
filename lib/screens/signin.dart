import 'package:flutter/material.dart';
import '../screens/fpw.dart';
import '../screens/signup.dart';
import '../widgets/bwidgets.dart';
import 'chatc_screen.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController emailtec = TextEditingController();
  TextEditingController passwordtec = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              spaced(150),
              const Icon(
                Icons.chat_bubble_rounded,
                size: 100,
                color: Colors.blue,
              ),
              const Text(
                'Chat App',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'by Mithilesh Ghadge',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.blue,
                  fontStyle: FontStyle.italic,
                ),
              ),
              spaced(100),
              Container(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  children: [
                    TextField(
                      controller: emailtec,
                      decoration: tfInputDecoration("E-mail"),
                    ),
                    TextField(
                      controller: passwordtec,
                      decoration: tfInputDecoration("Password"),
                    ),
                    spaced(15),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ForgotPWPage()));
                      },
                      child: const Text(
                        "Forgot Password?",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                    spaced(15),
                    blueRoundButton(context, "Sign In", () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => ChatsPage()));
                    }),
                    spaced(15),
                    blueRoundButton(context, "Don't have Account? Sign Up!",
                        () {
                      ;
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignUpPage()));
                    }),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
