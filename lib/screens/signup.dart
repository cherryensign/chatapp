import 'package:flutter/material.dart';
import '../widgets/bwidgets.dart';
import 'chatc_screen.dart';
import 'signin.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final formKey = GlobalKey<FormState>();
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
                    Form(
                        key: formKey,
                        child: Column(
                          children: [
                            TextFormField(
                              controller: emailtec,
                              validator: (val) {
                                return RegExp(
                                            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                        .hasMatch(val!)
                                    ? null
                                    : "Enter correct email";
                              },
                              decoration: tfInputDecoration("E-mail"),
                            ),
                            TextFormField(
                              controller: passwordtec,
                              validator: (val) {
                                return val!.length < 6
                                    ? "Enter Password 6+ characters"
                                    : null;
                              },
                              decoration: tfInputDecoration("Password"),
                            ),
                          ],
                        )),
                    spaced(15),
                    blueRoundButton(context, "Sign Up!", () {
                      if (formKey.currentState!.validate()) {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ChatsPage()));
                      }
                    }),
                    spaced(15),
                    blueRoundButton(context, "Already have Account? Sign In!",
                        () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignInPage()));
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
