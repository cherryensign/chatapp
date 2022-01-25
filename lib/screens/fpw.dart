import 'package:flutter/material.dart';
import '../screens/signin.dart';
import '../widgets/bwidgets.dart';

class ForgotPWPage extends StatefulWidget {
  ForgotPWPage({Key? key}) : super(key: key);

  @override
  State<ForgotPWPage> createState() => _ForgotPWPageState();
}

class _ForgotPWPageState extends State<ForgotPWPage> {
  final formKey = GlobalKey<FormState>();
  TextEditingController emailtec = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Back to Sign In'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              spaced(200),
              Container(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  children: [
                    const Text(
                      "Forgot Password? Don't worry you can reset it using a link we'll send on your registered E-mail!",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.blue,
                      ),
                    ),
                    spaced(15),
                    TextField(
                      controller: emailtec,
                      decoration: tfInputDecoration("Registered E-mail"),
                    ),
                    spaced(15),
                    blueRoundButton(context, "Send Link", () {
                      final snackBar = SnackBar(
                        content: Text('Sent link on registered E-mail'),
                        duration: Duration(seconds: 5),
                        action: SnackBarAction(
                          label: 'Ok',
                          onPressed: () {},
                        ),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
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
