import 'package:flutter/material.dart';
import 'package:quiz/signup_screen.dart'; // Ensure this path is correct

class Homepage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 5, 50, 80),
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: IconButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) =>signupscreen()),
                    );
                  },
                  icon: Icon(Icons.menu, color: Colors.white),
                ),
              ),
              SizedBox(height: 50),
              Row(
                children: [
                  Spacer(flex: 4),
                  Center(
                    child: Container(
                      height: 200,
                      width: 200,
                      alignment: Alignment.center, // Center the text inside the container
                      child: Text("Leeza App", textAlign: TextAlign.center , style: TextStyle( color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w600,),),
                    ),
                  ),
                  Spacer(flex: 4),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
