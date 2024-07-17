import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:quiz/quiz_screen.dart';
import 'package:quiz/signup_screen.dart';

class loginmodal extends StatefulWidget {
  loginmodal({
    super.key,
    required GlobalKey<FormState> formKey,
  }) : _formKey = formKey;
  final GlobalKey<FormState> _formKey;

  @override
  State<loginmodal> createState() => _loginmodalState();
}

class _loginmodalState extends State<loginmodal> {
  final _auth = FirebaseAuth.instance;
  final email = TextEditingController();
  final password = TextEditingController();

  void login() {
    _auth.signInWithEmailAndPassword(email: email.text, password: password.text)
        .then((value) {
      Fluttertoast.showToast(
        msg: "Login Successful",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0,
      );
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => QuizScreen()));
    }).catchError((error) {
      Fluttertoast.showToast(
        msg: error.message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 5, 50, 80),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.7,
          child: Form(
            child: ListView(
              children: [
                Form(
                  key: widget._formKey,
                  child: Column(
                    children: [
                      Text(
                        "Login",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 18),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text("Email",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                            textAlign: TextAlign.left),
                      ),
                      SizedBox(height: 8),
                      TextFormField(
                        controller: email,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          hintStyle: TextStyle(color: Colors.white),
                          hintText: 'Enter your email',
                          prefixIcon: Icon(Icons.email_outlined, color: Colors.white),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue, width: 2.0),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red, width: 2.0),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                      SizedBox(height: 16),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text("Password",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                            textAlign: TextAlign.left),
                      ),
                      SizedBox(height: 8),
                      TextFormField(
                        controller: password,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          hintStyle: TextStyle(color: Colors.white),
                          hintText: 'Enter your password',
                          prefixIcon: Icon(Icons.lock, color: Colors.white),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue, width: 2.0),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red, width: 2.0),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                      SizedBox(height: 9),
                      TextButton(
                        onPressed: () {},
                        child: Align(
                          alignment: Alignment.topRight,
                          child: Text(
                            "Forget Password?",
                            style: TextStyle(color: Colors.red, fontSize: 15),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            if (widget._formKey.currentState!.validate()) {
                              login();
                            }
                          },
                          style: ButtonStyle(
                            backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.blue),
                          ),
                          child: Text(
                            "Login".toUpperCase(),
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => signupscreen()),
                            );
                          },
                          child: Text.rich(TextSpan(
                              text: "Don't have an account? ",
                              style: TextStyle(fontSize: 18),
                              children: [
                                TextSpan(
                                    text: "SignUp",
                                    style: TextStyle(
                                        color: Colors.blue, fontSize: 18))
                              ]))),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
